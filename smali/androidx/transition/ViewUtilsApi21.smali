.class Landroidx/transition/ViewUtilsApi21;
.super Landroidx/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi21"

.field private static sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

.field private static sSetAnimationMatrixMethodFetched:Z

.field private static sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToGlobalMethodFetched:Z

.field private static sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

.field private static sTransformMatrixToLocalMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method

.method private fetchSetAnimationMatrix()V
    .locals 9

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    sget-boolean v2, Landroidx/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    if-nez v2, :cond_0

    .line 112
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "setAnimationMatrix"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/Matrix;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    .line 114
    sget-object v2, Landroidx/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsApi21;->sSetAnimationMatrixMethodFetched:Z

    .line 120
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 116
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewUtilsApi21"

    const-string/jumbo v3, "Failed to retrieve setAnimationMatrix method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method

.method private fetchTransformMatrixToGlobalMethod()V
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    sget-boolean v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    if-nez v2, :cond_0

    .line 86
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "transformMatrixToGlobal"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/Matrix;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    .line 88
    sget-object v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethodFetched:Z

    .line 94
    :cond_0
    return-void

    .line 89
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 90
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewUtilsApi21"

    const-string/jumbo v3, "Failed to retrieve transformMatrixToGlobal method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method

.method private fetchTransformMatrixToLocalMethod()V
    .locals 9

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    sget-boolean v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    if-nez v2, :cond_0

    .line 99
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "transformMatrixToLocal"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/Matrix;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    .line 101
    sget-object v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethodFetched:Z

    .line 107
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 103
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewUtilsApi21"

    const-string/jumbo v3, "Failed to retrieve transformMatrixToLocal method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/transition/ViewUtilsApi21;->fetchSetAnimationMatrix()V

    .line 72
    sget-object v4, Landroidx/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 74
    :try_start_0
    sget-object v4, Landroidx/transition/ViewUtilsApi21;->sSetAnimationMatrixMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 79
    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 79
    goto :goto_0

    .line 77
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 78
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/transition/ViewUtilsApi21;->fetchTransformMatrixToGlobalMethod()V

    .line 44
    sget-object v4, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 46
    :try_start_0
    sget-object v4, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToGlobalMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 51
    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 51
    goto :goto_0

    .line 49
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 50
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
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi21;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    move-object v4, v0

    invoke-direct {v4}, Landroidx/transition/ViewUtilsApi21;->fetchTransformMatrixToLocalMethod()V

    .line 58
    sget-object v4, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 60
    :try_start_0
    sget-object v4, Landroidx/transition/ViewUtilsApi21;->sTransformMatrixToLocalMethod:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 65
    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 65
    goto :goto_0

    .line 63
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 64
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
.end method
