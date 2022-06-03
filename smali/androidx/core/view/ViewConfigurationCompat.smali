.class public final Landroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewConfigCompat"

.field private static sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 41
    :try_start_0
    const-class v1, Landroid/view/ViewConfiguration;

    const-string/jumbo v2, "getScaledScrollFactor"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ViewConfigCompat"

    const-string/jumbo v2, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/ViewConfigurationCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_0

    sget-object v3, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 108
    :try_start_0
    sget-object v3, Landroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-float v3, v3

    move v0, v3

    .line 119
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :goto_0
    return v0

    .line 109
    .restart local v0    # "config":Landroid/view/ViewConfiguration;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ViewConfigCompat"

    const-string/jumbo v4, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 115
    .local v2, "outValue":Landroid/util/TypedValue;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101004d

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    move v0, v3

    goto :goto_0

    .line 119
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 4
    .param p0    # Landroid/view/ViewConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v2

    move v0, v2

    .line 84
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :goto_0
    return v0

    .restart local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static getScaledHoverSlop(Landroid/view/ViewConfiguration;)I
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 129
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result v1

    move v0, v1

    .line 131
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :goto_0
    return v0

    .restart local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    goto :goto_0
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    move v0, v1

    .end local v0    # "config":Landroid/view/ViewConfiguration;
    return v0
.end method

.method public static getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 4
    .param p0    # Landroid/view/ViewConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 99
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    move v0, v2

    .line 101
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :goto_0
    return v0

    .restart local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    move v0, v1

    .end local v0    # "config":Landroid/view/ViewConfiguration;
    return v0
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "config":Landroid/view/ViewConfiguration;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 142
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z

    move-result v4

    move v0, v4

    .line 147
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :goto_0
    return v0

    .line 144
    .restart local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v2, v4

    .line 145
    .local v2, "res":Landroid/content/res/Resources;
    move-object v4, v2

    const-string/jumbo v5, "config_showMenuShortcutsWhenKeyboardPresent"

    const-string/jumbo v6, "bool"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 147
    .local v3, "platformResId":I
    move v4, v3

    if-eqz v4, :cond_1

    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
