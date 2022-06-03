.class public final Landroidx/core/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompat"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 38
    :try_start_0
    const-string/jumbo v1, "libcore.icu.ICU"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 39
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    const-string/jumbo v2, "addLikelySubtags"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Ljava/util/Locale;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 61
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 41
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "libcore.icu.ICU"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 47
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    const-string/jumbo v2, "getScript"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 50
    move-object v1, v0

    const-string/jumbo v2, "addLikelySubtags"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :cond_1
    goto :goto_0

    .line 53
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 55
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 58
    const-string/jumbo v1, "ICUCompat"

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/ICUCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 127
    .local v1, "localeStr":Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 128
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v2, v3

    .line 129
    .local v2, "args":[Ljava/lang/Object;
    sget-object v3, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 139
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v2    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 137
    .line 139
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 131
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 133
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ICUCompat"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 137
    goto :goto_1

    .line 134
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 136
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ICUCompat"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "localeStr":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    move-object v1, v2

    .line 112
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroidx/core/text/ICUCompat;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 121
    .end local v0    # "localeStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 120
    .line 121
    .end local v1    # "args":[Ljava/lang/Object;
    .restart local v0    # "localeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 114
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 116
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "ICUCompat"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 120
    goto :goto_1

    .line 117
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 119
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "ICUCompat"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 90
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    move-object v1, v2

    .line 91
    .local v1, "args":[Ljava/lang/Object;
    sget-object v2, Landroidx/core/text/ICUCompat;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v0, v2

    .line 104
    .end local v0    # "locale":Ljava/util/Locale;
    .local v1, "localeWithSubtags":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 92
    .end local v1    # "localeWithSubtags":Ljava/lang/String;
    .restart local v0    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 93
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "ICUCompat"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 96
    .line 97
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 94
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 95
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "ICUCompat"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1

    .line 99
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Landroidx/core/text/ICUCompat;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 100
    .local v1, "localeWithSubtags":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 101
    move-object v2, v1

    invoke-static {v2}, Landroidx/core/text/ICUCompat;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 104
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
