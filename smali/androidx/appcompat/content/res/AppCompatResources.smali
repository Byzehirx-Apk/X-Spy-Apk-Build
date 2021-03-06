.class public final Landroidx/appcompat/content/res/AppCompatResources;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatResources"

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/appcompat/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 53
    new-instance v0, Ljava/lang/Object;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/content/res/AppCompatResources;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v2, p2

    .local v2, "value":Landroid/content/res/ColorStateList;
    sget-object v6, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    monitor-enter v6

    .line 149
    :try_start_0
    sget-object v6, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    move-object v4, v6

    .line 150
    .local v4, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    move-object v6, v4

    if-nez v6, :cond_0

    .line 151
    new-instance v6, Landroid/util/SparseArray;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v6

    .line 152
    sget-object v6, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 154
    :cond_0
    move-object v6, v4

    move v7, v1

    new-instance v8, Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    move-object v11, v0

    .line 155
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    .line 154
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 156
    move-object v6, v3

    monitor-exit v6

    .line 157
    return-void

    .line 156
    .end local v4    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private static getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    sget-object v6, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 129
    :try_start_0
    sget-object v6, Landroidx/appcompat/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    move-object v3, v6

    .line 130
    .local v3, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 131
    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;

    move-object v4, v6

    .line 132
    .local v4, "entry":Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    move-object v6, v4

    if-eqz v6, :cond_1

    .line 133
    move-object v6, v4

    iget-object v6, v6, Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    move-object v6, v4

    iget-object v6, v6, Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    move-object v7, v2

    monitor-exit v7

    move-object v0, v6

    .line 143
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "entry":Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "entry":Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    :cond_0
    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 142
    .end local v4    # "entry":Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;
    :cond_1
    move-object v6, v2

    monitor-exit v6

    .line 143
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 142
    .end local v3    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 67
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    .line 84
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 71
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v2, v3

    .line 72
    .local v2, "csl":Landroid/content/res/ColorStateList;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 73
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 76
    :cond_1
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v2, v3

    .line 77
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 79
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 80
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 84
    :cond_2
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 171
    sget-object v1, Landroidx/appcompat/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    move-object v0, v1

    .line 172
    .local v0, "tv":Landroid/util/TypedValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Landroid/util/TypedValue;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 174
    sget-object v1, Landroidx/appcompat/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 176
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "tv":Landroid/util/TypedValue;
    return-object v0
.end method

.method private static inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v5, v0

    move v6, v1

    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->isColorInt(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const/4 v5, 0x0

    move-object v0, v5

    .line 122
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v2, v5

    .line 116
    .local v2, "r":Landroid/content/res/Resources;
    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 118
    .local v3, "xml":Lorg/xmlpull/v1/XmlPullParser;
    move-object v5, v2

    move-object v6, v3

    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 119
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 120
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AppCompatResources"

    const-string/jumbo v6, "Failed to inflate ColorStateList, leaving it to the framework"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 122
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private static isColorInt(Landroid/content/Context;I)Z
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resId":I
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v2, v4

    .line 162
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroidx/appcompat/content/res/AppCompatResources;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v4

    move-object v3, v4

    .line 163
    .local v3, "value":Landroid/util/TypedValue;
    move-object v4, v2

    move v5, v1

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 165
    move-object v4, v3

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    move-object v4, v3

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
