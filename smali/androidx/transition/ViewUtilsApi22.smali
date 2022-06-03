.class Landroidx/transition/ViewUtilsApi22;
.super Landroidx/transition/ViewUtilsApi21;
.source "ViewUtilsApi22.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x16
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi22"

.field private static sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

.field private static sSetLeftTopRightBottomMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi22;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/transition/ViewUtilsApi21;-><init>()V

    return-void
.end method

.method private fetchSetLeftTopRightBottomMethod()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi22;
    sget-boolean v2, Landroidx/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethodFetched:Z

    if-nez v2, :cond_0

    .line 54
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "setLeftTopRightBottom"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

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

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    .line 56
    sget-object v2, Landroidx/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroidx/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethodFetched:Z

    .line 62
    :cond_0
    return-void

    .line 57
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 58
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "ViewUtilsApi22"

    const-string/jumbo v3, "Failed to retrieve setLeftTopRightBottom method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 14

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewUtilsApi22;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move/from16 v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v7, v0

    invoke-direct {v7}, Landroidx/transition/ViewUtilsApi22;->fetchSetLeftTopRightBottomMethod()V

    .line 39
    sget-object v7, Landroidx/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_0

    .line 41
    :try_start_0
    sget-object v7, Landroidx/transition/ViewUtilsApi22;->sSetLeftTopRightBottomMethod:Ljava/lang/reflect/Method;

    move-object v8, v1

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move v12, v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 46
    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 46
    goto :goto_0

    .line 44
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 45
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
