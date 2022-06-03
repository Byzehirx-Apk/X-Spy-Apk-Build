.class Landroidx/transition/ViewGroupUtilsApi18;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi18.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi18"

.field private static sSuppressLayoutMethod:Ljava/lang/reflect/Method;

.field private static sSuppressLayoutMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupUtilsApi18;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static fetchSuppressLayoutMethod()V
    .locals 8

    .prologue
    .line 50
    sget-boolean v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    if-nez v1, :cond_0

    .line 52
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string/jumbo v2, "suppressLayout"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    .line 54
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    .line 60
    :cond_0
    return-void

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ViewUtilsApi18"

    const-string/jumbo v2, "Failed to retrieve suppressLayout method"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 10
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "suppress":Z
    invoke-static {}, Landroidx/transition/ViewGroupUtilsApi18;->fetchSuppressLayoutMethod()V

    .line 38
    sget-object v3, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 40
    :try_start_0
    sget-object v3, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 45
    .line 47
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 42
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ViewUtilsApi18"

    const-string/jumbo v4, "Failed to invoke suppressLayout method"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 45
    goto :goto_0

    .line 43
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 44
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ViewUtilsApi18"

    const-string/jumbo v4, "Error invoking suppressLayout method"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method
