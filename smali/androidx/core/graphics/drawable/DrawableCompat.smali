.class public final Landroidx/core/graphics/drawable/DrawableCompat;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompat"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/DrawableCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 189
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 191
    :cond_0
    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 198
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    move v0, v1

    .line 200
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 223
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_6

    .line 225
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 231
    move-object v6, v0

    instance-of v6, v6, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v6, :cond_2

    .line 232
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 233
    :cond_2
    move-object v6, v0

    instance-of v6, v6, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v6, :cond_3

    .line 234
    move-object v6, v0

    check-cast v6, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v6}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 235
    :cond_3
    move-object v6, v0

    instance-of v6, v6, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v6, :cond_0

    .line 236
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/DrawableContainer;

    move-object v1, v6

    .line 237
    .local v1, "container":Landroid/graphics/drawable/DrawableContainer;
    move-object v6, v1

    .line 238
    invoke-virtual {v6}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-object v2, v6

    .line 239
    .local v2, "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    move-object v6, v2

    if-eqz v6, :cond_5

    .line 241
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v6

    move v5, v6

    .local v5, "count":I
    :goto_1
    move v6, v4

    move v7, v5

    if-ge v6, v7, :cond_5

    .line 242
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v3, v6

    .line 243
    .local v3, "child":Landroid/graphics/drawable/Drawable;
    move-object v6, v3

    if-eqz v6, :cond_4

    .line 244
    move-object v6, v3

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 248
    .end local v3    # "child":Landroid/graphics/drawable/Drawable;
    .end local v4    # "i":I
    .end local v5    # "count":I
    :cond_5
    goto :goto_0

    .line 250
    .end local v1    # "container":Landroid/graphics/drawable/DrawableContainer;
    .end local v2    # "state":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_6
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public static getAlpha(Landroid/graphics/drawable/Drawable;)I
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 178
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    move v0, v1

    .line 180
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 211
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    move-object v0, v1

    .line 213
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 5
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 392
    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v2

    move v0, v2

    .line 415
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .line 393
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 394
    sget-boolean v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    if-nez v2, :cond_1

    .line 396
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "getLayoutDirection"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 397
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 398
    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .line 402
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethodFetched:Z

    .line 405
    :cond_1
    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 407
    :try_start_1
    sget-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    goto :goto_0

    .line 399
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 400
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "DrawableCompat"

    const-string/jumbo v3, "Failed to retrieve getLayoutDirection() method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1

    .line 408
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrawableCompat"

    const-string/jumbo v3, "Failed to invoke getLayoutDirection() via reflection"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 410
    const/4 v2, 0x0

    sput-object v2, Landroidx/core/graphics/drawable/DrawableCompat;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 413
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 415
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, p2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, p4

    .local v4, "theme":Landroid/content/res/Resources$Theme;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 269
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 96
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    move v0, v1

    .line 98
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 63
    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move v1, p1

    .local v1, "mirrored":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 79
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 6
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 111
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 113
    :cond_0
    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 10
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 124
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 126
    :cond_0
    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 10
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move v1, p1

    .local v1, "layoutDirection":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 355
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v3

    move v0, v3

    .line 379
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return v0

    .line 356
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 357
    sget-boolean v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    if-nez v3, :cond_1

    .line 359
    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v4, "setLayoutDirection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 360
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 361
    sget-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .line 365
    :goto_1
    const/4 v3, 0x1

    sput-boolean v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethodFetched:Z

    .line 368
    :cond_1
    sget-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 370
    :try_start_1
    sget-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 371
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 362
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 363
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "DrawableCompat"

    const-string/jumbo v4, "Failed to retrieve setLayoutDirection(int) method"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1

    .line 372
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 373
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DrawableCompat"

    const-string/jumbo v4, "Failed to invoke setLayoutDirection(int) via reflection"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 374
    const/4 v3, 0x0

    sput-object v3, Landroidx/core/graphics/drawable/DrawableCompat;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 377
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 379
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move v1, p1

    .local v1, "tint":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 136
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v2, :cond_0

    .line 138
    move-object v2, v0

    check-cast v2, Landroidx/core/graphics/drawable/TintAwareDrawable;

    move v3, v1

    invoke-interface {v2, v3}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTint(I)V

    goto :goto_0
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 150
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v0

    check-cast v2, Landroidx/core/graphics/drawable/TintAwareDrawable;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 164
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-eqz v2, :cond_0

    .line 166
    move-object v2, v0

    check-cast v2, Landroidx/core/graphics/drawable/TintAwareDrawable;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/core/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v1, :cond_0

    .line 335
    move-object v1, v0

    check-cast v1, Landroidx/core/graphics/drawable/WrappedDrawable;

    invoke-interface {v1}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 337
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 308
    move-object v1, v0

    move-object v0, v1

    .line 318
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 309
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 310
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v1, :cond_1

    .line 311
    new-instance v1, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    goto :goto_0

    .line 313
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0

    .line 315
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/graphics/drawable/TintAwareDrawable;

    if-nez v1, :cond_3

    .line 316
    new-instance v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    goto :goto_0

    .line 318
    :cond_3
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method
