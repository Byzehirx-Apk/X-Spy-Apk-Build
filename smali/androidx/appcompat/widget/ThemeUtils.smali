.class Landroidx/appcompat/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final ACTIVATED_STATE_SET:[I

.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10102fe

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ThemeUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 45
    move v0, p0

    .local v0, "textColor":I
    move v1, p1

    .local v1, "disabledTextColor":I
    const/4 v5, 0x2

    new-array v5, v5, [[I

    move-object v2, v5

    .line 46
    .local v2, "states":[[I
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 47
    .local v3, "colors":[I
    const/4 v5, 0x0

    move v4, v5

    .line 50
    .local v4, "i":I
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 51
    move-object v5, v3

    move v6, v4

    move v7, v1

    aput v7, v5, v6

    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 55
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 56
    move-object v5, v3

    move v6, v4

    move v7, v0

    aput v7, v5, v6

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 59
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    .end local v0    # "textColor":I
    return-object v0
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 9

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "attr":I
    move-object v5, v0

    move v6, v1

    invoke-static {v5, v6}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v2, v5

    .line 84
    .local v2, "csl":Landroid/content/res/ColorStateList;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    move-object v5, v2

    sget-object v6, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    move v0, v5

    .line 95
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .line 90
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v5

    move-object v3, v5

    .line 92
    .local v3, "tv":Landroid/util/TypedValue;
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010033

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    .line 93
    move-object v5, v3

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    move v4, v5

    .line 95
    .local v4, "disabledAlpha":F
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "attr":I
    sget-object v5, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    .line 64
    move-object v5, v0

    const/4 v6, 0x0

    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v2, v5

    .line 66
    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v3, v5

    .line 68
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move v5, v3

    move v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "attr":I
    move v2, p2

    .local v2, "alpha":F
    move-object v5, v0

    move v6, v1

    invoke-static {v5, v6}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    move v3, v5

    .line 110
    .local v3, "color":I
    move v5, v3

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    move v4, v5

    .line 111
    .local v4, "originalAlpha":I
    move v5, v3

    move v6, v4

    int-to-float v6, v6

    move v7, v2

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    move v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "attr":I
    sget-object v5, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    const/4 v6, 0x0

    move v7, v1

    aput v7, v5, v6

    .line 74
    move-object v5, v0

    const/4 v6, 0x0

    sget-object v7, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v2, v5

    .line 76
    .local v2, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 78
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move-object v5, v3

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 4

    .prologue
    .line 100
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    move-object v0, v1

    .line 101
    .local v0, "typedValue":Landroid/util/TypedValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Landroid/util/TypedValue;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 103
    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "typedValue":Landroid/util/TypedValue;
    return-object v0
.end method
