.class Landroidx/transition/ViewUtilsApi19;
.super Landroidx/transition/ViewUtilsBase;
.source "ViewUtilsApi19.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi19"

.field private static sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

.field private static sGetTransitionAlphaMethodFetched:Z

.field private static sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

.field private static sSetTransitionAlphaMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi19;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/ViewUtilsBase;-><init>()V

    return-void
.end method

.method private fetchGetTransitionAlphaMethod()V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi19;
    sget-boolean v2, Landroidx/transition/ViewUtilsApi19;->sGetTransitionAlphaMethodFetched:Z

    if-nez v2, :cond_0

    .line 95
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "getTransitionAlpha"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    .line 96
    sget-object v2, Landroidx/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsApi19;->sGetTransitionAlphaMethodFetched:Z

    .line 102
    :cond_0
    return-void

    .line 97
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 98
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewUtilsApi19"

    const-string/jumbo v3, "Failed to retrieve getTransitionAlpha method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method

.method private fetchSetTransitionAlphaMethod()V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi19;
    sget-boolean v2, Landroidx/transition/ViewUtilsApi19;->sSetTransitionAlphaMethodFetched:Z

    if-nez v2, :cond_0

    .line 82
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "setTransitionAlpha"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    .line 84
    sget-object v2, Landroidx/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsApi19;->sSetTransitionAlphaMethodFetched:Z

    .line 90
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 86
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewUtilsApi19"

    const-string/jumbo v3, "Failed to retrieve setTransitionAlpha method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi19;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v3, v0

    invoke-direct {v3}, Landroidx/transition/ViewUtilsApi19;->fetchGetTransitionAlphaMethod()V

    .line 57
    sget-object v3, Landroidx/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 59
    :try_start_0
    sget-object v3, Landroidx/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v0, v3

    .line 66
    .end local v0    # "this":Landroidx/transition/ViewUtilsApi19;
    :goto_0
    return v0

    .line 60
    .restart local v0    # "this":Landroidx/transition/ViewUtilsApi19;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 66
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/transition/ViewUtilsBase;->getTransitionAlpha(Landroid/view/View;)F

    move-result v3

    move v0, v3

    goto :goto_0

    .line 62
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 63
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi19;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move v2, p2

    .local v2, "alpha":F
    move-object v4, v0

    invoke-direct {v4}, Landroidx/transition/ViewUtilsApi19;->fetchSetTransitionAlphaMethod()V

    .line 41
    sget-object v4, Landroidx/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 43
    :try_start_0
    sget-object v4, Landroidx/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 48
    .line 52
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 48
    goto :goto_0

    .line 46
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 47
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 50
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
