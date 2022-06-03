.class public Landroidx/core/graphics/TypefaceCompatApi26Impl;
.super Landroidx/core/graphics/TypefaceCompatApi21Impl;
.source "TypefaceCompatApi26Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String; = "abortCreation"

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String; = "addFontFromAssetManager"

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String; = "addFontFromBuffer"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final FREEZE_METHOD:Ljava/lang/String; = "freeze"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi26Impl"


# instance fields
.field protected final mAbortCreation:Ljava/lang/reflect/Method;

.field protected final mAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field protected final mAddFontFromBuffer:Ljava/lang/reflect/Method;

.field protected final mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field protected final mFontFamily:Ljava/lang/Class;

.field protected final mFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field protected final mFreeze:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v9, v0

    invoke-direct {v9}, Landroidx/core/graphics/TypefaceCompatApi21Impl;-><init>()V

    .line 84
    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFontFamily()Ljava/lang/Class;

    move-result-object v9

    move-object v1, v9

    .line 85
    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    move-object v2, v9

    .line 86
    .local v2, "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v3, v9

    .line 87
    .local v3, "addFontFromAssetManager":Ljava/lang/reflect/Method;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v4, v9

    .line 88
    .local v4, "addFontFromBuffer":Ljava/lang/reflect/Method;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v5, v9

    .line 89
    .local v5, "freeze":Ljava/lang/reflect/Method;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v6, v9

    .line 90
    .local v6, "abortCreation":Ljava/lang/reflect/Method;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    move-object v7, v9

    .line 101
    .line 102
    .local v7, "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    :goto_0
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    .line 103
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 104
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    .line 105
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    .line 106
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    .line 107
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    .line 108
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 109
    return-void

    .line 91
    .end local v1    # "fontFamily":Ljava/lang/Class;
    .end local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v3    # "addFontFromAssetManager":Ljava/lang/reflect/Method;
    .end local v4    # "addFontFromBuffer":Ljava/lang/reflect/Method;
    .end local v5    # "freeze":Ljava/lang/reflect/Method;
    .end local v6    # "abortCreation":Ljava/lang/reflect/Method;
    .end local v7    # "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v9

    :goto_1
    move-object v8, v9

    .line 92
    .local v8, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v9, "TypefaceCompatApi26Impl"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to collect necessary methods for class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-static {v9, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 94
    const/4 v9, 0x0

    move-object v1, v9

    .line 95
    .restart local v1    # "fontFamily":Ljava/lang/Class;
    const/4 v9, 0x0

    move-object v2, v9

    .line 96
    .restart local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x0

    move-object v3, v9

    .line 97
    .restart local v3    # "addFontFromAssetManager":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    move-object v4, v9

    .line 98
    .restart local v4    # "addFontFromBuffer":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    move-object v5, v9

    .line 99
    .restart local v5    # "freeze":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    move-object v6, v9

    .line 100
    .restart local v6    # "abortCreation":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    move-object v7, v9

    .restart local v7    # "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 91
    .end local v1    # "fontFamily":Ljava/lang/Class;
    .end local v2    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;
    .end local v3    # "addFontFromAssetManager":Ljava/lang/reflect/Method;
    .end local v4    # "addFontFromBuffer":Ljava/lang/reflect/Method;
    .end local v5    # "freeze":Ljava/lang/reflect/Method;
    .end local v6    # "abortCreation":Ljava/lang/reflect/Method;
    .end local v7    # "createFromFamiliesWithDefault":Ljava/lang/reflect/Method;
    .end local v8    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private abortCreation(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "family":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAbortCreation:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 199
    .line 200
    return-void

    .line 197
    :catch_0
    move-exception v3

    :goto_0
    move-object v2, v3

    .line 198
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 197
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 16
    .param p7    # [Landroid/graphics/fonts/FontVariationAxis;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "family":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "fileName":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "ttcIndex":I
    move/from16 v5, p5

    .local v5, "weight":I
    move/from16 v6, p6

    .local v6, "style":I
    move-object/from16 v7, p7

    .local v7, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    move-object v10, v2

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v1

    .line 141
    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v3

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x5

    move v14, v5

    .line 142
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x6

    move v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x7

    move-object v14, v7

    aput-object v14, v12, v13

    .line 140
    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    move-object v8, v9

    .line 143
    .local v8, "result":Ljava/lang/Boolean;
    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    move v0, v9

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return v0

    .line 144
    .end local v8    # "result":Ljava/lang/Boolean;
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :catch_0
    move-exception v9

    :goto_0
    move-object v8, v9

    .line 145
    .local v8, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v8

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 144
    .end local v8    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 14

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "family":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move/from16 v3, p3

    .local v3, "ttcIndex":I
    move/from16 v4, p4

    .local v4, "weight":I
    move/from16 v5, p5

    .local v5, "style":I
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromBuffer:Ljava/lang/reflect/Method;

    move-object v8, v1

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v3

    .line 157
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    move v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 156
    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    move-object v6, v7

    .line 158
    .local v6, "result":Ljava/lang/Boolean;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    move v0, v7

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return v0

    .line 159
    .end local v6    # "result":Ljava/lang/Boolean;
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :catch_0
    move-exception v7

    :goto_0
    move-object v6, v7

    .line 160
    .local v6, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 159
    .end local v6    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private freeze(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "family":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFreeze:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    move-object v2, v3

    .line 185
    .local v2, "result":Ljava/lang/Boolean;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return v0

    .line 186
    .end local v2    # "result":Ljava/lang/Boolean;
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :catch_0
    move-exception v3

    :goto_0
    move-object v2, v3

    .line 187
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 186
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private isFontFamilyPrivateAPIAvailable()Z
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 116
    const-string/jumbo v1, "TypefaceCompatApi26Impl"

    const-string/jumbo v2, "Unable to collect necessary private methods. Fallback to legacy implementation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 119
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return v0

    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newFamily()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0

    .line 128
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :catch_0
    move-exception v2

    :goto_0
    move-object v1, v2

    .line 129
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 10

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "family":Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 171
    .local v2, "familyArray":Ljava/lang/Object;
    move-object v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 172
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 172
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0

    .line 174
    .end local v2    # "familyArray":Ljava/lang/Object;
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :catch_0
    move-exception v3

    :goto_0
    move-object v2, v3

    .line 175
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 174
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 18

    .prologue
    .line 206
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    move-object/from16 v3, p3

    .local v3, "resources":Landroid/content/res/Resources;
    move/from16 v4, p4

    .local v4, "style":I
    move-object v10, v0

    invoke-direct {v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v10

    if-nez v10, :cond_0

    .line 207
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move v14, v4

    invoke-super {v10, v11, v12, v13, v14}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v10

    move-object v0, v10

    .line 221
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :goto_0
    return-object v0

    .line 209
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    .line 210
    .local v5, "fontFamily":Ljava/lang/Object;
    move-object v10, v2

    invoke-virtual {v10}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v10

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_3

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 211
    .local v9, "fontFile":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v5

    move-object v13, v9

    invoke-virtual {v13}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v9

    .line 212
    invoke-virtual {v14}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v14

    move-object v15, v9

    invoke-virtual {v15}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v17, v9

    .line 213
    invoke-virtual/range {v17 .. v17}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v17

    .line 211
    invoke-direct/range {v10 .. v17}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 214
    move-object v10, v0

    move-object v11, v5

    invoke-direct {v10, v11}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 215
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 212
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 210
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 218
    .end local v9    # "fontFile":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :cond_3
    move-object v10, v0

    move-object v11, v5

    invoke-direct {v10, v11}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 219
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 221
    :cond_4
    move-object v10, v0

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 21
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    move-object/from16 v3, p3

    .local v3, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move/from16 v4, p4

    .local v4, "style":I
    move-object v14, v3

    array-length v14, v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    .line 229
    const/4 v14, 0x0

    move-object v0, v14

    .line 274
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :goto_0
    return-object v0

    .line 231
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :cond_0
    move-object v14, v0

    invoke-direct {v14}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v14

    if-nez v14, :cond_8

    .line 234
    move-object v14, v0

    move-object v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v14 .. v16}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v14

    move-object v5, v14

    .line 235
    .local v5, "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object v6, v14

    .line 236
    .local v6, "resolver":Landroid/content/ContentResolver;
    move-object v14, v6

    move-object v15, v5

    .line 237
    :try_start_0
    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v15

    const-string/jumbo v16, "r"

    move-object/from16 v17, v2

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    move-object v7, v14

    .line 236
    .local v7, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v14, 0x0

    move-object v8, v14

    .line 238
    move-object v14, v7

    if-nez v14, :cond_3

    .line 239
    const/4 v14, 0x0

    move-object v9, v14

    .line 245
    move-object v14, v7

    if-eqz v14, :cond_1

    move-object v14, v8

    if-eqz v14, :cond_2

    move-object v14, v7

    :try_start_1
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move-object v14, v9

    move-object v0, v14

    goto :goto_0

    :catch_0
    move-exception v14

    move-object v10, v14

    move-object v14, v8

    move-object v15, v10

    :try_start_2
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v14, v7

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v14

    move-object v7, v14

    .line 246
    .local v7, "e":Ljava/io/IOException;
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 241
    .local v7, "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    :try_start_3
    new-instance v14, Landroid/graphics/Typeface$Builder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    move-object v15, v5

    .line 242
    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v14

    move-object v15, v5

    .line 243
    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v14

    .line 244
    invoke-virtual {v14}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    move-object v9, v14

    .line 245
    move-object v14, v7

    if-eqz v14, :cond_4

    move-object v14, v8

    if-eqz v14, :cond_5

    move-object v14, v7

    :try_start_4
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v14, v9

    move-object v0, v14

    goto/16 :goto_0

    :catch_2
    move-exception v14

    move-object v10, v14

    move-object v14, v8

    move-object v15, v10

    :try_start_5
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move-object v14, v7

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 236
    :catch_3
    move-exception v14

    move-object v9, v14

    move-object v14, v9

    move-object v8, v14

    move-object v14, v9

    :try_start_6
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    :catchall_0
    move-exception v14

    move-object v11, v14

    move-object v14, v7

    if-eqz v14, :cond_6

    move-object v14, v8

    if-eqz v14, :cond_7

    move-object v14, v7

    :try_start_7
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :goto_3
    move-object v14, v11

    :try_start_8
    throw v14

    :catch_4
    move-exception v14

    move-object v12, v14

    move-object v14, v8

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    move-object v14, v7

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 249
    .end local v5    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_8
    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v2

    invoke-static/range {v14 .. v16}, Landroidx/core/provider/FontsContractCompat;->prepareFontData(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v14

    move-object v5, v14

    .line 251
    .local v5, "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    move-object v14, v0

    invoke-direct {v14}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v14

    move-object v6, v14

    .line 252
    .local v6, "fontFamily":Ljava/lang/Object;
    const/4 v14, 0x0

    move v7, v14

    .line 253
    .local v7, "atLeastOneFont":Z
    move-object v14, v3

    move-object v8, v14

    move-object v14, v8

    array-length v14, v14

    move v9, v14

    const/4 v14, 0x0

    move v10, v14

    :goto_4
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_c

    move-object v14, v8

    move v15, v10

    aget-object v14, v14, v15

    move-object v11, v14

    .line 254
    .local v11, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v14, v5

    move-object v15, v11

    invoke-virtual {v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    move-object v12, v14

    .line 255
    .local v12, "fontBuffer":Ljava/nio/ByteBuffer;
    move-object v14, v12

    if-nez v14, :cond_9

    .line 256
    .line 253
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 258
    :cond_9
    move-object v14, v0

    move-object v15, v6

    move-object/from16 v16, v12

    move-object/from16 v17, v11

    .line 259
    invoke-virtual/range {v17 .. v17}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v17

    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v18

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    .line 258
    :goto_6
    invoke-direct/range {v14 .. v19}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v14

    move v13, v14

    .line 260
    .local v13, "success":Z
    move v14, v13

    if-nez v14, :cond_b

    .line 261
    move-object v14, v0

    move-object v15, v6

    invoke-direct {v14, v15}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 262
    const/4 v14, 0x0

    move-object v0, v14

    goto/16 :goto_0

    .line 259
    .end local v13    # "success":Z
    :cond_a
    const/16 v19, 0x0

    goto :goto_6

    .line 264
    .restart local v13    # "success":Z
    :cond_b
    const/4 v14, 0x1

    move v7, v14

    goto :goto_5

    .line 266
    .end local v11    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v12    # "fontBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "success":Z
    :cond_c
    move v14, v7

    if-nez v14, :cond_d

    .line 267
    move-object v14, v0

    move-object v15, v6

    invoke-direct {v14, v15}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 268
    const/4 v14, 0x0

    move-object v0, v14

    goto/16 :goto_0

    .line 270
    :cond_d
    move-object v14, v0

    move-object v15, v6

    invoke-direct {v14, v15}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 271
    const/4 v14, 0x0

    move-object v0, v14

    goto/16 :goto_0

    .line 273
    :cond_e
    move-object v14, v0

    move-object v15, v6

    invoke-virtual {v14, v15}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v14

    move-object v8, v14

    .line 274
    .local v8, "typeface":Landroid/graphics/Typeface;
    move-object v14, v8

    move v15, v4

    invoke-static {v14, v15}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v14

    move-object v0, v14

    goto/16 :goto_0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 15
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move/from16 v3, p3

    .local v3, "id":I
    move-object/from16 v4, p4

    .local v4, "path":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "style":I
    move-object v7, v0

    invoke-direct {v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-super/range {v7 .. v12}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v0, v7

    .line 297
    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    :cond_0
    move-object v7, v0

    invoke-direct {v7}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 288
    .local v6, "fontFamily":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 291
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)V

    .line 292
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 294
    :cond_1
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 295
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 297
    :cond_2
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroidx/core/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method protected obtainAbortCreationMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v2, v1

    const-string/jumbo v3, "abortCreation"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method

.method protected obtainAddFontFromAssetManagerMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v2, v1

    const-string/jumbo v3, "addFontFromAssetManager"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Landroid/content/res/AssetManager;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method

.method protected obtainAddFontFromBufferMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v2, v1

    const-string/jumbo v3, "addFontFromBuffer"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Ljava/nio/ByteBuffer;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 337
    .local v2, "familyArray":Ljava/lang/Object;
    const-class v4, Landroid/graphics/Typeface;

    const-string/jumbo v5, "createFromFamiliesWithDefault"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    .line 338
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 337
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 339
    .local v3, "m":Ljava/lang/reflect/Method;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 340
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method

.method protected obtainFontFamily()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    const-string/jumbo v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method

.method protected obtainFontFamilyCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v2, v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method

.method protected obtainFreezeMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    move-object v1, p1

    .local v1, "fontFamily":Ljava/lang/Class;
    move-object v2, v1

    const-string/jumbo v3, "freeze"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatApi26Impl;
    return-object v0
.end method
