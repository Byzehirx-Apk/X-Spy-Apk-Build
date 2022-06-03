.class Landroidx/transition/GhostViewApi21;
.super Ljava/lang/Object;
.source "GhostViewApi21.java"

# interfaces
.implements Landroidx/transition/GhostViewImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GhostViewApi21"

.field private static sAddGhostMethod:Ljava/lang/reflect/Method;

.field private static sAddGhostMethodFetched:Z

.field private static sGhostViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sGhostViewClassFetched:Z

.field private static sRemoveGhostMethod:Ljava/lang/reflect/Method;

.field private static sRemoveGhostMethodFetched:Z


# instance fields
.field private final mGhostView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi21;
    move-object v1, p1

    .local v1, "ghostView":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/transition/GhostViewApi21;->mGhostView:Landroid/view/View;

    .line 75
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;
    .locals 13

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-static {}, Landroidx/transition/GhostViewApi21;->fetchAddGhostMethod()V

    .line 44
    sget-object v4, Landroidx/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 46
    :try_start_0
    new-instance v4, Landroidx/transition/GhostViewApi21;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    sget-object v6, Landroidx/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move-object v11, v2

    aput-object v11, v9, v10

    .line 47
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {v5, v6}, Landroidx/transition/GhostViewApi21;-><init>(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v4

    .line 54
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "view":Landroid/view/View;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 54
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 50
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 51
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static fetchAddGhostMethod()V
    .locals 8

    .prologue
    .line 99
    sget-boolean v1, Landroidx/transition/GhostViewApi21;->sAddGhostMethodFetched:Z

    if-nez v1, :cond_0

    .line 101
    :try_start_0
    invoke-static {}, Landroidx/transition/GhostViewApi21;->fetchGhostViewClass()V

    .line 102
    sget-object v1, Landroidx/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;

    const-string/jumbo v2, "addGhost"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-class v6, Landroid/view/ViewGroup;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-class v6, Landroid/graphics/Matrix;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    .line 104
    sget-object v1, Landroidx/transition/GhostViewApi21;->sAddGhostMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/GhostViewApi21;->sAddGhostMethodFetched:Z

    .line 110
    :cond_0
    return-void

    .line 105
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "GhostViewApi21"

    const-string/jumbo v2, "Failed to retrieve addGhost method"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method private static fetchGhostViewClass()V
    .locals 4

    .prologue
    .line 88
    sget-boolean v1, Landroidx/transition/GhostViewApi21;->sGhostViewClassFetched:Z

    if-nez v1, :cond_0

    .line 90
    :try_start_0
    const-string/jumbo v1, "android.view.GhostView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/GhostViewApi21;->sGhostViewClassFetched:Z

    .line 96
    :cond_0
    return-void

    .line 91
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 92
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v1, "GhostViewApi21"

    const-string/jumbo v2, "Failed to retrieve GhostView class"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method private static fetchRemoveGhostMethod()V
    .locals 8

    .prologue
    .line 113
    sget-boolean v1, Landroidx/transition/GhostViewApi21;->sRemoveGhostMethodFetched:Z

    if-nez v1, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Landroidx/transition/GhostViewApi21;->fetchGhostViewClass()V

    .line 116
    sget-object v1, Landroidx/transition/GhostViewApi21;->sGhostViewClass:Ljava/lang/Class;

    const-string/jumbo v2, "removeGhost"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/view/View;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    .line 117
    sget-object v1, Landroidx/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/GhostViewApi21;->sRemoveGhostMethodFetched:Z

    .line 123
    :cond_0
    return-void

    .line 118
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 119
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "GhostViewApi21"

    const-string/jumbo v2, "Failed to retrieve removeGhost method"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    invoke-static {}, Landroidx/transition/GhostViewApi21;->fetchRemoveGhostMethod()V

    .line 59
    sget-object v2, Landroidx/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 61
    :try_start_0
    sget-object v2, Landroidx/transition/GhostViewApi21;->sRemoveGhostMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 66
    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 66
    goto :goto_0

    .line 64
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 65
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 85
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewApi21;
    move v1, p1

    .local v1, "visibility":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/GhostViewApi21;->mGhostView:Landroid/view/View;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method
