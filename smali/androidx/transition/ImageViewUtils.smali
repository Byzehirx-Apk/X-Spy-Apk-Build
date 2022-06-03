.class Landroidx/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewUtils"

.field private static sAnimateTransformMethod:Ljava/lang/reflect/Method;

.field private static sAnimateTransformMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ImageViewUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 10

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    move-object v1, p1

    .local v1, "matrix":Landroid/graphics/Matrix;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 57
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Landroidx/transition/ImageViewUtils;->fetchAnimateTransformMethod()V

    .line 60
    sget-object v3, Landroidx/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 62
    :try_start_0
    sget-object v3, Landroidx/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

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
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 67
    goto :goto_0

    .line 63
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 67
    goto :goto_0

    .line 65
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 66
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static fetchAnimateTransformMethod()V
    .locals 8

    .prologue
    .line 73
    sget-boolean v1, Landroidx/transition/ImageViewUtils;->sAnimateTransformMethodFetched:Z

    if-nez v1, :cond_0

    .line 75
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    const-string/jumbo v2, "animateTransform"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Matrix;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    .line 77
    sget-object v1, Landroidx/transition/ImageViewUtils;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroidx/transition/ImageViewUtils;->sAnimateTransformMethodFetched:Z

    .line 83
    :cond_0
    return-void

    .line 78
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v1, "ImageViewUtils"

    const-string/jumbo v2, "Failed to retrieve animateTransform method"

    move-object v3, v0

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method static reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    move-object v1, p1

    .local v1, "animator":Landroid/animation/Animator;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 91
    move-object v2, v1

    new-instance v3, Landroidx/transition/ImageViewUtils$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/transition/ImageViewUtils$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method static startAnimateTransform(Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 41
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    move-object v1, v2

    .line 42
    .local v1, "scaleType":Landroid/widget/ImageView$ScaleType;
    move-object v2, v0

    sget v3, Landroidx/transition/R$id;->save_scale_type:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 43
    move-object v2, v1

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_1

    .line 44
    move-object v2, v0

    sget v3, Landroidx/transition/R$id;->save_image_matrix:I

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 48
    :goto_0
    move-object v2, v0

    sget-object v3, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 50
    .end local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_0
    return-void

    .line 46
    .restart local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_1
    move-object v2, v0

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method
