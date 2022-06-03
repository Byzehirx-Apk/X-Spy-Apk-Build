.class public final Landroidx/core/os/LocaleListCompat;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;,
        Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroidx/core/os/LocaleListInterface;

.field private static final sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Landroidx/core/os/LocaleListCompat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/os/LocaleListCompat;-><init>()V

    sput-object v0, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 171
    new-instance v0, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/os/LocaleListCompat$LocaleListCompatApi24Impl;-><init>()V

    sput-object v0, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;-><init>()V

    sput-object v0, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;
    .locals 5
    .param p0    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "localeList":[Ljava/util/Locale;
    new-instance v2, Landroidx/core/os/LocaleListCompat;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/os/LocaleListCompat;-><init>()V

    move-object v1, v2

    .line 207
    .local v1, "instance":Landroidx/core/os/LocaleListCompat;
    move-object v2, v1

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/os/LocaleListCompat;->setLocaleListArray([Ljava/util/Locale;)V

    .line 208
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "localeList":[Ljava/util/Locale;
    return-object v0
.end method

.method public static forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "list":Ljava/lang/String;
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    :cond_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v4

    move-object v0, v4

    .line 301
    .end local v0    # "list":Ljava/lang/String;
    .local v1, "tags":[Ljava/lang/String;
    .local v2, "localeArray":[Ljava/util/Locale;
    .local v3, "instance":Landroidx/core/os/LocaleListCompat;
    :goto_0
    return-object v0

    .line 292
    .end local v1    # "tags":[Ljava/lang/String;
    .end local v2    # "localeArray":[Ljava/util/Locale;
    .end local v3    # "instance":Landroidx/core/os/LocaleListCompat;
    .restart local v0    # "list":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    const-string/jumbo v5, ","

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 293
    .restart local v1    # "tags":[Ljava/lang/String;
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [Ljava/util/Locale;

    move-object v2, v4

    .line 294
    .restart local v2    # "localeArray":[Ljava/util/Locale;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 295
    move-object v4, v2

    move v5, v3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    .line 296
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    .line 297
    :goto_2
    aput-object v6, v4, v5

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 296
    :cond_2
    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    .line 297
    invoke-static {v6}, Landroidx/core/os/LocaleHelper;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    goto :goto_2

    .line 299
    :cond_3
    new-instance v4, Landroidx/core/os/LocaleListCompat;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroidx/core/os/LocaleListCompat;-><init>()V

    move-object v3, v4

    .line 300
    .local v3, "instance":Landroidx/core/os/LocaleListCompat;
    move-object v4, v3

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/core/os/LocaleListCompat;->setLocaleListArray([Ljava/util/Locale;)V

    .line 301
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method public static getAdjustedDefault()Landroidx/core/os/LocaleListCompat;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 312
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefault()Landroidx/core/os/LocaleListCompat;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x1L
    .end annotation

    .prologue
    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 332
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->wrap(Ljava/lang/Object;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 276
    sget-object v0, Landroidx/core/os/LocaleListCompat;->sEmptyLocaleList:Landroidx/core/os/LocaleListCompat;

    return-object v0
.end method

.method private setLocaleList(Landroid/os/LocaleList;)V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move-object v1, p1

    .local v1, "localeList":Landroid/os/LocaleList;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v5

    move v2, v5

    .line 356
    .local v2, "localeListSize":I
    move v5, v2

    if-lez v5, :cond_1

    .line 357
    move v5, v2

    new-array v5, v5, [Ljava/util/Locale;

    move-object v3, v5

    .line 358
    .local v3, "localeArrayList":[Ljava/util/Locale;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_0

    .line 359
    move-object v5, v3

    move v6, v4

    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 361
    :cond_0
    sget-object v5, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    move-object v6, v3

    invoke-interface {v5, v6}, Landroidx/core/os/LocaleListInterface;->setLocaleList([Ljava/util/Locale;)V

    .line 363
    .end local v3    # "localeArrayList":[Ljava/util/Locale;
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private varargs setLocaleListArray([Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move-object v1, p1

    .local v1, "localeArrayList":[Ljava/util/Locale;
    sget-object v2, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/os/LocaleListInterface;->setLocaleList([Ljava/util/Locale;)V

    .line 367
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/core/os/LocaleListCompat;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "object":Ljava/lang/Object;
    new-instance v2, Landroidx/core/os/LocaleListCompat;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroidx/core/os/LocaleListCompat;-><init>()V

    move-object v1, v2

    .line 185
    .local v1, "instance":Landroidx/core/os/LocaleListCompat;
    move-object v2, v0

    instance-of v2, v2, Landroid/os/LocaleList;

    if-eqz v2, :cond_0

    .line 186
    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroid/os/LocaleList;

    invoke-direct {v2, v3}, Landroidx/core/os/LocaleListCompat;->setLocaleList(Landroid/os/LocaleList;)V

    .line 189
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    sget-object v2, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/os/LocaleListInterface;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move v1, p1

    .local v1, "index":I
    sget-object v2, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/os/LocaleListInterface;->get(I)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move-object v1, p1

    .local v1, "supportedLocales":[Ljava/lang/String;
    sget-object v2, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/os/LocaleListInterface;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    sget-object v1, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Landroidx/core/os/LocaleListInterface;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 4
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/os/LocaleListInterface;->indexOf(Ljava/util/Locale;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    sget-object v1, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Landroidx/core/os/LocaleListInterface;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return v0
.end method

.method public size()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    sget-object v1, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Landroidx/core/os/LocaleListInterface;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    sget-object v1, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Landroidx/core/os/LocaleListInterface;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    sget-object v1, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Landroidx/core/os/LocaleListInterface;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Landroidx/core/os/LocaleListCompat;
    sget-object v1, Landroidx/core/os/LocaleListCompat;->IMPL:Landroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/os/LocaleListCompat;
    return-object v0
.end method
