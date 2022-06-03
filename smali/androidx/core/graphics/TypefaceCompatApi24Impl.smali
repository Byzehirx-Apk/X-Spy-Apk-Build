.class Landroidx/core/graphics/TypefaceCompatApi24Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi24Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi24Impl"

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 69
    :try_start_0
    const-string/jumbo v5, "android.graphics.FontFamily"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    .line 70
    .local v0, "fontFamilyClass":Ljava/lang/Class;
    move-object v5, v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    move-object v1, v5

    .line 71
    .local v1, "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    move-object v5, v0

    const-string/jumbo v6, "addFontWeightStyle"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-class v10, Ljava/nio/ByteBuffer;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-class v10, Ljava/util/List;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x4

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 73
    .local v2, "addFontMethod":Ljava/lang/reflect/Method;
    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 74
    .local v4, "familyArray":Ljava/lang/Object;
    const-class v5, Landroid/graphics/Typeface;

    const-string/jumbo v6, "createFromFamiliesWithDefault"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v4

    .line 76
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    .line 75
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v3, v5

    .line 83
    .line 84
    .end local v4    # "familyArray":Ljava/lang/Object;
    .local v3, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :goto_0
    move-object v5, v1

    sput-object v5, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 85
    move-object v5, v0

    sput-object v5, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    .line 86
    move-object v5, v2

    sput-object v5, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 87
    move-object v5, v3

    sput-object v5, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 88
    return-void

    .line 77
    .end local v1    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v2    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v3    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    :goto_1
    move-object v4, v5

    .line 78
    .local v4, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v5, "TypefaceCompatApi24Impl"

    .end local v0    # "fontFamilyClass":Ljava/lang/Class;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 79
    const/4 v5, 0x0

    move-object v0, v5

    .line 80
    .restart local v0    # "fontFamilyClass":Ljava/lang/Class;
    const/4 v5, 0x0

    move-object v1, v5

    .line 81
    .restart local v1    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object v2, v5

    .line 82
    .restart local v2    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    move-object v3, v5

    .restart local v3    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 77
    .end local v1    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v2    # "addFontMethod":Ljava/lang/reflect/Method;
    .end local v3    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v4    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 13

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "family":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "ttcIndex":I
    move/from16 v3, p3

    .local v3, "weight":I
    move/from16 v4, p4

    .local v4, "style":Z
    :try_start_0
    sget-object v6, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    move-object v7, v0

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move v11, v2

    .line 113
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    move v11, v4

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 112
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    move-object v5, v6

    .line 114
    .local v5, "result":Ljava/lang/Boolean;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    move v0, v6

    .end local v0    # "family":Ljava/lang/Object;
    return v0

    .line 115
    .end local v5    # "result":Ljava/lang/Boolean;
    .restart local v0    # "family":Ljava/lang/Object;
    :catch_0
    move-exception v6

    :goto_0
    move-object v5, v6

    .line 116
    .local v5, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 115
    .end local v5    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "family":Ljava/lang/Object;
    :try_start_0
    sget-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 123
    .local v1, "familyArray":Ljava/lang/Object;
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 124
    sget-object v2, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .end local v0    # "family":Ljava/lang/Object;
    return-object v0

    .line 126
    .end local v1    # "familyArray":Ljava/lang/Object;
    .restart local v0    # "family":Ljava/lang/Object;
    :catch_0
    move-exception v2

    :goto_0
    move-object v1, v2

    .line 127
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 126
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static isUsable()Z
    .locals 2

    .prologue
    .line 94
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 95
    const-string/jumbo v0, "TypefaceCompatApi24Impl"

    const-string/jumbo v1, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 98
    :cond_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 103
    :try_start_0
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 104
    :catch_0
    move-exception v1

    :goto_0
    move-object v0, v1

    .line 105
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 104
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 16

    .prologue
    .line 156
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    move-object/from16 v3, p3

    .local v3, "resources":Landroid/content/res/Resources;
    move/from16 v4, p4

    .local v4, "style":I
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    .line 157
    .local v5, "family":Ljava/lang/Object;
    move-object v11, v2

    invoke-virtual {v11}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    array-length v11, v11

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_2

    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    .line 158
    .local v9, "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v11, v1

    move-object v12, v3

    move-object v13, v9

    .line 159
    invoke-virtual {v13}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v13

    invoke-static {v11, v12, v13}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object v10, v11

    .line 160
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    move-object v11, v10

    if-nez v11, :cond_0

    .line 161
    const/4 v11, 0x0

    move-object v0, v11

    .line 167
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    .end local v9    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v0

    .line 163
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    .restart local v9    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .restart local v10    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    move-object v11, v5

    move-object v12, v10

    move-object v13, v9

    invoke-virtual {v13}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v13

    move-object v14, v9

    invoke-virtual {v14}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v14

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v11

    if-nez v11, :cond_1

    .line 164
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1

    .line 157
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 167
    .end local v9    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    move-object v11, v5

    invoke-static {v11}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v11

    move-object v0, v11

    goto :goto_1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 19
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v3, p3

    .local v3, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move/from16 v4, p4

    .local v4, "style":I
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v13

    move-object v5, v13

    .line 135
    .local v5, "family":Ljava/lang/Object;
    new-instance v13, Landroidx/collection/SimpleArrayMap;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Landroidx/collection/SimpleArrayMap;-><init>()V

    move-object v6, v13

    .line 137
    .local v6, "bufferCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    move-object v13, v3

    move-object v7, v13

    move-object v13, v7

    array-length v13, v13

    move v8, v13

    const/4 v13, 0x0

    move v9, v13

    :goto_0
    move v13, v9

    move v14, v8

    if-ge v13, v14, :cond_2

    move-object v13, v7

    move v14, v9

    aget-object v13, v13, v14

    move-object v10, v13

    .line 138
    .local v10, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v13, v10

    invoke-virtual {v13}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v13

    move-object v11, v13

    .line 139
    .local v11, "uri":Landroid/net/Uri;
    move-object v13, v6

    move-object v14, v11

    invoke-virtual {v13, v14}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    move-object v12, v13

    .line 140
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    move-object v13, v12

    if-nez v13, :cond_0

    .line 141
    move-object v13, v1

    move-object v14, v2

    move-object v15, v11

    invoke-static {v13, v14, v15}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v12, v13

    .line 142
    move-object v13, v6

    move-object v14, v11

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 144
    :cond_0
    move-object v13, v5

    move-object v14, v12

    move-object v15, v10

    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v15

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v16

    move-object/from16 v17, v10

    .line 145
    invoke-virtual/range {v17 .. v17}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v17

    .line 144
    invoke-static/range {v13 .. v17}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v13

    if-nez v13, :cond_1

    .line 146
    const/4 v13, 0x0

    move-object v0, v13

    .line 150
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    .end local v10    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v0

    .line 137
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi24Impl;
    .restart local v10    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 149
    .end local v10    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    move-object v13, v5

    invoke-static {v13}, Landroidx/core/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object v7, v13

    .line 150
    .local v7, "typeface":Landroid/graphics/Typeface;
    move-object v13, v7

    move v14, v4

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v13

    move-object v0, v13

    goto :goto_1
.end method
