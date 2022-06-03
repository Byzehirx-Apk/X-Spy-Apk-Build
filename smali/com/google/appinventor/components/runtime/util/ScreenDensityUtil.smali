.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .locals 11

    .prologue
    .line 45
    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object v1, v6

    .line 47
    new-instance v6, Landroid/graphics/Point;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    move-object v2, v6

    .line 48
    move-object v6, v0

    move-object v7, v2

    move-object v3, v7

    move-object v0, v6

    .line 1091
    new-instance v6, Landroid/util/DisplayMetrics;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v4, v6

    .line 1092
    move-object v6, v0

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1093
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v0, v6

    .line 1095
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    move v10, v6

    move v6, v10

    move v7, v10

    .line 1096
    move v5, v7

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 1098
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1099
    move-object v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 1100
    move-object v6, v3

    move-object v7, v4

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 50
    :goto_0
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Point;->x:I

    move v0, v6

    .line 51
    move-object v6, v2

    iget v6, v6, Landroid/graphics/Point;->y:I

    move v2, v6

    .line 54
    move v6, v0

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 55
    move v6, v0

    move v3, v6

    .line 56
    move v6, v2

    move v4, v6

    .line 61
    :goto_1
    const/high16 v6, 0x43a00000    # 320.0f

    move-object v7, v1

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move v1, v6

    .line 62
    move v6, v4

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v10, v6

    move v6, v10

    move v7, v10

    .line 63
    move v3, v7

    const v7, 0x3fe3bbbc

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 64
    const v6, 0x3fe3bbbc

    move v3, v6

    .line 66
    :cond_0
    move v6, v1

    int-to-float v6, v6

    move v7, v3

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move v3, v6

    .line 68
    move v6, v0

    move v7, v2

    if-ge v6, v7, :cond_5

    .line 69
    move v6, v1

    move v4, v6

    .line 70
    move v6, v3

    move v1, v6

    .line 76
    :goto_2
    move v6, v0

    int-to-float v6, v6

    move v7, v4

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v0, v6

    .line 77
    move v6, v2

    int-to-float v6, v6

    move v7, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v1, v6

    .line 79
    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v0

    move v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const v8, 0x3fe3bbbc

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v0, v6

    return v0

    .line 1101
    :cond_1
    move v6, v5

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    .line 1103
    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/JellybeanUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 1104
    :cond_2
    move v6, v5

    const/16 v7, 0xa

    if-le v6, v7, :cond_3

    .line 1109
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string/jumbo v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v4, v6

    .line 1110
    const-class v6, Landroid/view/Display;

    const-string/jumbo v7, "getRawWidth"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    move-object v5, v6

    .line 1112
    move-object v6, v3

    move-object v7, v5

    move-object v8, v0

    const/4 v9, 0x0

    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 1113
    move-object v6, v3

    move-object v7, v4

    move-object v8, v0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1120
    goto/16 :goto_0

    .line 1114
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1115
    :try_start_2
    const-string/jumbo v6, "ScreenDensityUtil"

    const-string/jumbo v7, "Error reading raw screen size"

    move-object v8, v0

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 1120
    goto/16 :goto_0

    .line 1116
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1117
    const-string/jumbo v6, "ScreenDensityUtil"

    const-string/jumbo v7, "Error reading raw screen size"

    move-object v8, v0

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 1120
    goto/16 :goto_0

    .line 1118
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 1119
    const-string/jumbo v6, "ScreenDensityUtil"

    const-string/jumbo v7, "Error reading raw screen size"

    move-object v8, v0

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v6

    .line 1123
    goto/16 :goto_0

    .line 1121
    :catch_3
    move-exception v6

    move-object v4, v6

    .line 1122
    const-string/jumbo v6, "ScreenDensityUtil"

    const-string/jumbo v7, "Error reading raw screen size"

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 1123
    goto/16 :goto_0

    .line 1127
    :cond_3
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 1128
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 58
    :cond_4
    move v6, v2

    move v3, v6

    .line 59
    move v6, v0

    move v4, v6

    goto/16 :goto_1

    .line 72
    :cond_5
    move v6, v3

    move v4, v6

    goto/16 :goto_2
.end method
