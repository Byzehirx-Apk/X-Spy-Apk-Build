.class public Lcom/google/android/material/internal/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static setConstantStateMethod:Ljava/lang/reflect/Method;

.field private static setConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/DrawableUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/android/material/internal/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v2

    move v0, v2

    .end local v0    # "drawable":Landroid/graphics/drawable/DrawableContainer;
    return v0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 10

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/DrawableContainer;
    move-object v1, p1

    .local v1, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-boolean v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethodFetched:Z

    if-nez v3, :cond_0

    .line 52
    :try_start_0
    const-class v3, Landroid/graphics/drawable/DrawableContainer;

    const-string/jumbo v4, "setConstantState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v8, v6, v7

    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethodFetched:Z

    .line 61
    :cond_0
    sget-object v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 63
    :try_start_1
    sget-object v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 64
    const/4 v3, 0x1

    move v0, v3

    .line 69
    .end local v0    # "drawable":Landroid/graphics/drawable/DrawableContainer;
    :goto_1
    return v0

    .line 56
    .restart local v0    # "drawable":Landroid/graphics/drawable/DrawableContainer;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 57
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "DrawableUtils"

    const-string/jumbo v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 65
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DrawableUtils"

    const-string/jumbo v4, "Could not invoke setConstantState(). Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 69
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method
