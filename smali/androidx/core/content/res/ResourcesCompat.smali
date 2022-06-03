.class public final Landroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$FontCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesCompat"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/ResourcesCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 145
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    move v0, v3

    .line 147
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return v0

    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 175
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    .line 177
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 82
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 84
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move v1, p1

    .local v1, "id":I
    move v2, p2

    .local v2, "density":I
    move-object v3, p3

    .local v3, "theme":Landroid/content/res/Resources$Theme;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 115
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    .line 119
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_1

    .line 117
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 119
    :cond_1
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x0

    move-object v0, v2

    .line 207
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v2, v0

    move v3, v1

    new-instance v4, Landroid/util/TypedValue;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .param p4    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "value":Landroid/util/TypedValue;
    move v3, p3

    .local v3, "style":I
    move-object/from16 v4, p4

    .local v4, "fontCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const/4 v5, 0x0

    move-object v0, v5

    .line 316
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/FontRes;
        .end annotation
    .end param
    .param p2    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "fontCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object v3, p3

    .local v3, "handler":Landroid/os/Handler;
    move-object v4, v2

    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 296
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    move-object v4, v2

    const/4 v5, -0x4

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 299
    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    move-object v4, v0

    move v5, v1

    new-instance v6, Landroid/util/TypedValue;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v4

    .line 303
    goto :goto_0
.end method

.method private static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 18
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 336
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move/from16 v1, p1

    .local v1, "id":I
    move-object/from16 v2, p2

    .local v2, "value":Landroid/util/TypedValue;
    move/from16 v3, p3

    .local v3, "style":I
    move-object/from16 v4, p4

    .local v4, "fontCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object/from16 v5, p5

    .local v5, "handler":Landroid/os/Handler;
    move/from16 v6, p6

    .local v6, "isRequestFromLayoutInflator":Z
    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v7, v9

    .line 337
    .local v7, "resources":Landroid/content/res/Resources;
    move-object v9, v7

    move v10, v1

    move-object v11, v2

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 338
    move-object v9, v0

    move-object v10, v7

    move-object v11, v2

    move v12, v1

    move v13, v3

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    invoke-static/range {v9 .. v16}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v9

    move-object v8, v9

    .line 340
    .local v8, "typeface":Landroid/graphics/Typeface;
    move-object v9, v8

    if-nez v9, :cond_0

    move-object v9, v4

    if-nez v9, :cond_0

    .line 341
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Font resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v1

    .line 342
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " could not be retrieved."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 344
    :cond_0
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method private static loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 21
    .param p0    # Landroid/content/Context;
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

    .prologue
    .line 356
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "wrapper":Landroid/content/res/Resources;
    move-object/from16 v2, p2

    .local v2, "value":Landroid/util/TypedValue;
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
    move-object v12, v2

    iget-object v12, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v12, :cond_0

    .line 357
    new-instance v12, Landroid/content/res/Resources$NotFoundException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Resource \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\" ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v3

    .line 358
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ") is not a Font: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 361
    :cond_0
    move-object v12, v2

    iget-object v12, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 362
    .local v8, "file":Ljava/lang/String;
    move-object v12, v8

    const-string/jumbo v13, "res/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 364
    move-object v12, v5

    if-eqz v12, :cond_1

    .line 365
    move-object v12, v5

    const/4 v13, -0x3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 368
    :cond_1
    const/4 v12, 0x0

    move-object v0, v12

    .line 415
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 370
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    move-object v12, v1

    move v13, v3

    move v14, v4

    invoke-static {v12, v13, v14}, Landroidx/core/graphics/TypefaceCompat;->findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v12

    move-object v9, v12

    .line 372
    .local v9, "typeface":Landroid/graphics/Typeface;
    move-object v12, v9

    if-eqz v12, :cond_4

    .line 373
    move-object v12, v5

    if-eqz v12, :cond_3

    .line 374
    move-object v12, v5

    move-object v13, v9

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 376
    :cond_3
    move-object v12, v9

    move-object v0, v12

    goto :goto_0

    .line 380
    :cond_4
    move-object v12, v8

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 381
    move-object v12, v1

    move v13, v3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    move-object v10, v12

    .line 382
    .local v10, "rp":Landroid/content/res/XmlResourceParser;
    move-object v12, v10

    move-object v13, v1

    .line 383
    invoke-static {v12, v13}, Landroidx/core/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v12

    move-object v11, v12

    .line 384
    .local v11, "familyEntry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    move-object v12, v11

    if-nez v12, :cond_6

    .line 385
    const-string/jumbo v12, "ResourcesCompat"

    const-string/jumbo v13, "Failed to find font-family tag"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 386
    move-object v12, v5

    if-eqz v12, :cond_5

    .line 387
    move-object v12, v5

    const/4 v13, -0x3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 390
    :cond_5
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 392
    :cond_6
    move-object v12, v0

    move-object v13, v11

    move-object v14, v1

    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    invoke-static/range {v12 .. v19}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v12

    move-object v0, v12

    goto :goto_0

    .line 395
    .end local v10    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v11    # "familyEntry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :cond_7
    move-object v12, v0

    move-object v13, v1

    move v14, v3

    move-object v15, v8

    move/from16 v16, v4

    invoke-static/range {v12 .. v16}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v12

    move-object v9, v12

    .line 397
    move-object v12, v5

    if-eqz v12, :cond_8

    .line 398
    move-object v12, v9

    if-eqz v12, :cond_9

    .line 399
    move-object v12, v5

    move-object v13, v9

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 405
    :cond_8
    :goto_1
    move-object v12, v9

    move-object v0, v12

    goto :goto_0

    .line 401
    :cond_9
    move-object v12, v5

    const/4 v13, -0x3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 406
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 407
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v12, "ResourcesCompat"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to parse xml resource "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v12

    .line 410
    .line 411
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    move-object v12, v5

    if-eqz v12, :cond_a

    .line 412
    move-object v12, v5

    const/4 v13, -0x3

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 415
    :cond_a
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0

    .line 408
    :catch_1
    move-exception v12

    move-object v10, v12

    .line 409
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v12, "ResourcesCompat"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to read xml resource "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v14, v10

    invoke-static {v12, v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v12

    goto :goto_2
.end method
