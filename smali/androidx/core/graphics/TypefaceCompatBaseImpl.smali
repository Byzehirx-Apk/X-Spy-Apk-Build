.class Landroidx/core/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = "cached_font_"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 9

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, p1

    .local v1, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    move v2, p2

    .local v2, "style":I
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    move v4, v2

    new-instance v5, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    return-object v0
.end method

.method private static findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "fonts":[Ljava/lang/Object;, "[TT;"
    move/from16 v1, p1

    .local v1, "style":I
    move-object/from16 v2, p2

    .local v2, "extractor":Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;, "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor<TT;>;"
    move v12, v1

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_2

    const/16 v12, 0x190

    :goto_0
    move v3, v12

    .line 53
    .local v3, "targetWeight":I
    move v12, v1

    const/4 v13, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v4, v12

    .line 55
    .local v4, "isTargetItalic":Z
    const/4 v12, 0x0

    move-object v5, v12

    .line 56
    .local v5, "best":Ljava/lang/Object;, "TT;"
    const v12, 0x7fffffff

    move v6, v12

    .line 58
    .local v6, "bestScore":I
    move-object v12, v0

    move-object v7, v12

    move-object v12, v7

    array-length v12, v12

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    .end local v5    # "best":Ljava/lang/Object;, "TT;"
    :goto_2
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_5

    move-object v12, v7

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 59
    .local v10, "font":Ljava/lang/Object;, "TT;"
    move-object v12, v2

    move-object v13, v10

    invoke-interface {v12, v13}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->getWeight(Ljava/lang/Object;)I

    move-result v12

    move v13, v3

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    move-object v13, v2

    move-object v14, v10

    .line 60
    invoke-interface {v13, v14}, Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;->isItalic(Ljava/lang/Object;)Z

    move-result v13

    move v14, v4

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    :goto_3
    add-int/2addr v12, v13

    move v11, v12

    .line 62
    .local v11, "score":I
    move-object v12, v5

    if-eqz v12, :cond_0

    move v12, v6

    move v13, v11

    if-le v12, v13, :cond_1

    .line 63
    :cond_0
    move-object v12, v10

    move-object v5, v12

    .line 64
    .restart local v5    # "best":Ljava/lang/Object;, "TT;"
    move v12, v11

    move v6, v12

    .line 58
    .end local v5    # "best":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 52
    .end local v3    # "targetWeight":I
    .end local v4    # "isTargetItalic":Z
    .end local v6    # "bestScore":I
    .end local v10    # "font":Ljava/lang/Object;, "TT;"
    .end local v11    # "score":I
    :cond_2
    const/16 v12, 0x2bc

    goto :goto_0

    .line 53
    .restart local v3    # "targetWeight":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 60
    .restart local v4    # "isTargetItalic":Z
    .restart local v6    # "bestScore":I
    .restart local v10    # "font":Ljava/lang/Object;, "TT;"
    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    .line 67
    .end local v10    # "font":Ljava/lang/Object;, "TT;"
    :cond_5
    move-object v12, v5

    move-object v0, v12

    .end local v0    # "fonts":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    move-object v3, p3

    .local v3, "resources":Landroid/content/res/Resources;
    move v4, p4

    .local v4, "style":I
    move-object v6, v0

    move-object v7, v2

    move v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v6

    move-object v5, v6

    .line 141
    .local v5, "best":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 142
    const/4 v6, 0x0

    move-object v0, v6

    .line 144
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :cond_0
    move-object v6, v1

    move-object v7, v3

    move-object v8, v5

    .line 145
    invoke-virtual {v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    .line 144
    invoke-static {v6, v7, v8, v9, v10}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 13
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v3, p3

    .local v3, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move/from16 v4, p4

    .local v4, "style":I
    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 109
    const/4 v10, 0x0

    move-object v0, v10

    .line 119
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :cond_0
    move-object v10, v0

    move-object v11, v3

    move v12, v4

    invoke-virtual {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v10

    move-object v5, v10

    .line 112
    .local v5, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    const/4 v10, 0x0

    move-object v6, v10

    .line 114
    .local v6, "is":Ljava/io/InputStream;
    move-object v10, v1

    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v11}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    move-object v6, v10

    .line 115
    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    move-object v7, v10

    .line 119
    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 116
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 117
    .local v7, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    move-object v8, v10

    .line 119
    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v8

    move-object v0, v10

    goto :goto_0

    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v6

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    move-object v10, v9

    throw v10
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "is":Ljava/io/InputStream;
    move-object v7, v1

    invoke-static {v7}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    move-object v3, v7

    .line 87
    .local v3, "tmpFile":Ljava/io/File;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 88
    const/4 v7, 0x0

    move-object v0, v7

    .line 101
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :goto_0
    return-object v0

    .line 91
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :cond_0
    move-object v7, v3

    move-object v8, v2

    :try_start_0
    invoke-static {v7, v8}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 92
    const/4 v7, 0x0

    move-object v4, v7

    .line 101
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 94
    :cond_1
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 101
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 95
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 99
    .local v4, "e":Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    move-object v5, v7

    .line 101
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    move-object v7, v6

    throw v7
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move/from16 v3, p3

    .local v3, "id":I
    move-object/from16 v4, p4

    .local v4, "path":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "style":I
    move-object v10, v1

    invoke-static {v10}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    move-object v6, v10

    .line 155
    .local v6, "tmpFile":Ljava/io/File;
    move-object v10, v6

    if-nez v10, :cond_0

    .line 156
    const/4 v10, 0x0

    move-object v0, v10

    .line 169
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :goto_0
    return-object v0

    .line 159
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    :cond_0
    move-object v10, v6

    move-object v11, v2

    move v12, v3

    :try_start_0
    invoke-static {v10, v11, v12}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 160
    const/4 v10, 0x0

    move-object v7, v10

    .line 169
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 162
    :cond_1
    move-object v10, v6

    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    move-object v7, v10

    .line 169
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    move-object v10, v7

    move-object v0, v10

    goto :goto_0

    .line 163
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 167
    .local v7, "e":Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    move-object v8, v10

    .line 169
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    move-object v10, v8

    move-object v0, v10

    goto :goto_0

    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    move-object v10, v9

    throw v10
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 9

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v1, p1

    .local v1, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move v2, p2

    .local v2, "style":I
    move-object v3, v1

    move v4, v2

    new-instance v5, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;-><init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V

    invoke-static {v3, v4, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestFont([Ljava/lang/Object;ILandroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    return-object v0
.end method
