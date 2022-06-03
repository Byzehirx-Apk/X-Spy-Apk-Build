.class public Landroidx/core/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompat"

.field private static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi28Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatApi28Impl;-><init>()V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    .line 66
    :goto_0
    new-instance v0, Landroidx/collection/LruCache;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    return-void

    .line 51
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 52
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi26Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 53
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 54
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatApi24Impl;-><init>()V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 56
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 57
    new-instance v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatApi21Impl;-><init>()V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object v2, p2

    .local v2, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move v3, p3

    .local v3, "style":I
    sget-object v4, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 19
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 104
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    move-object/from16 v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move/from16 v3, p3

    .local v3, "id":I
    move/from16 v4, p4

    .local v4, "style":I
    move-object/from16 v5, p5

    .local v5, "fontCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object/from16 v6, p6

    .local v6, "handler":Landroid/os/Handler;
    move/from16 v7, p7

    .local v7, "isRequestFromLayoutInflator":Z
    move-object v12, v1

    instance-of v12, v12, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v12, :cond_6

    .line 105
    move-object v12, v1

    check-cast v12, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    move-object v9, v12

    .line 106
    .local v9, "providerEntry":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    move v12, v7

    if-eqz v12, :cond_3

    move-object v12, v9

    .line 107
    invoke-virtual {v12}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_0
    move v10, v12

    .line 110
    .local v10, "isBlocking":Z
    move v12, v7

    if-eqz v12, :cond_5

    move-object v12, v9

    invoke-virtual {v12}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result v12

    :goto_1
    move v11, v12

    .line 112
    .local v11, "timeout":I
    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v13}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Landroidx/core/provider/FontRequest;

    move-result-object v13

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v4

    invoke-static/range {v12 .. v18}, Landroidx/core/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v12

    move-object v8, v12

    .line 127
    .end local v9    # "providerEntry":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    .end local v10    # "isBlocking":Z
    .end local v11    # "timeout":I
    .local v8, "typeface":Landroid/graphics/Typeface;
    :cond_0
    :goto_2
    move-object v12, v8

    if-eqz v12, :cond_1

    .line 128
    sget-object v12, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    move-object v13, v2

    move v14, v3

    move v15, v4

    invoke-static {v13, v14, v15}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v12, v13, v14}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 130
    :cond_1
    move-object v12, v8

    move-object v0, v12

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 107
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v9    # "providerEntry":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    move-object v12, v5

    if-nez v12, :cond_4

    const/4 v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 110
    .restart local v10    # "isBlocking":Z
    :cond_5
    const/4 v12, -0x1

    goto :goto_1

    .line 115
    .end local v9    # "providerEntry":Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    .end local v10    # "isBlocking":Z
    :cond_6
    sget-object v12, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v13, v0

    move-object v14, v1

    check-cast v14, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object v15, v2

    move/from16 v16, v4

    invoke-virtual/range {v12 .. v16}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v12

    move-object v8, v12

    .line 117
    .restart local v8    # "typeface":Landroid/graphics/Typeface;
    move-object v12, v5

    if-eqz v12, :cond_0

    .line 118
    move-object v12, v8

    if-eqz v12, :cond_7

    .line 119
    move-object v12, v5

    move-object v13, v8

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    .line 121
    :cond_7
    move-object v12, v5

    const/4 v13, -0x3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_2
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "resources":Landroid/content/res/Resources;
    move v2, p2

    .local v2, "id":I
    move-object/from16 v3, p3

    .local v3, "path":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "style":I
    sget-object v7, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v5, v7

    .line 142
    .local v5, "typeface":Landroid/graphics/Typeface;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 143
    move-object v7, v1

    move v8, v2

    move v9, v4

    invoke-static {v7, v8, v9}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 144
    .local v6, "resourceUid":Ljava/lang/String;
    sget-object v7, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 146
    .end local v6    # "resourceUid":Ljava/lang/String;
    :cond_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "style":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "resources":Landroid/content/res/Resources;
    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 7
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "resources":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "style":I
    sget-object v3, Landroidx/core/graphics/TypefaceCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Landroidx/core/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    move-object v0, v3

    .end local v0    # "resources":Landroid/content/res/Resources;
    return-object v0
.end method
