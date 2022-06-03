.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010367

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    .line 54
    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    .line 57
    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    .line 60
    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/ripple/RippleUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "rippleColor":Landroid/content/res/ColorStateList;
    sget-boolean v5, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v5, :cond_0

    .line 96
    const/4 v5, 0x2

    move v1, v5

    .line 98
    .local v1, "size":I
    move v5, v1

    new-array v5, v5, [[I

    move-object v2, v5

    .line 99
    .local v2, "states":[[I
    move v5, v1

    new-array v5, v5, [I

    move-object v3, v5

    .line 100
    .local v3, "colors":[I
    const/4 v5, 0x0

    move v4, v5

    .line 108
    .local v4, "i":I
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 109
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 113
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    aput-object v7, v5, v6

    .line 114
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 117
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    .line 167
    .end local v0    # "rippleColor":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .line 119
    .end local v1    # "size":I
    .end local v2    # "states":[[I
    .end local v3    # "colors":[I
    .end local v4    # "i":I
    .restart local v0    # "rippleColor":Landroid/content/res/ColorStateList;
    :cond_0
    const/16 v5, 0xa

    move v1, v5

    .line 121
    .restart local v1    # "size":I
    move v5, v1

    new-array v5, v5, [[I

    move-object v2, v5

    .line 122
    .restart local v2    # "states":[[I
    move v5, v1

    new-array v5, v5, [I

    move-object v3, v5

    .line 123
    .restart local v3    # "colors":[I
    const/4 v5, 0x0

    move v4, v5

    .line 125
    .restart local v4    # "i":I
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 126
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 129
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 130
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 133
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 134
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 137
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 138
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 142
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 143
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 144
    add-int/lit8 v4, v4, 0x1

    .line 146
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 147
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 150
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 151
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 154
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 155
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 158
    move-object v5, v2

    move v6, v4

    sget-object v7, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 159
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    sget-object v8, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    invoke-static {v7, v8}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v5, v6

    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 163
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    aput-object v7, v5, v6

    .line 164
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 165
    add-int/lit8 v4, v4, 0x1

    .line 167
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private static doubleAlpha(I)I
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 189
    move v0, p0

    .local v0, "color":I
    const/4 v2, 0x2

    move v3, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    mul-int/2addr v2, v3

    const/16 v3, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 190
    .local v1, "alpha":I
    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    move v0, v2

    .end local v0    # "color":I
    return v0
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .locals 6
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "rippleColor":Landroid/content/res/ColorStateList;
    move-object v1, p1

    .local v1, "state":[I
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 175
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    move v2, v3

    .line 179
    .local v2, "color":I
    :goto_0
    sget-boolean v3, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    if-eqz v3, :cond_1

    move v3, v2

    invoke-static {v3}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    move-result v3

    :goto_1
    move v0, v3

    .end local v0    # "rippleColor":Landroid/content/res/ColorStateList;
    return v0

    .line 177
    .end local v2    # "color":I
    .restart local v0    # "rippleColor":Landroid/content/res/ColorStateList;
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "color":I
    goto :goto_0

    .line 179
    :cond_1
    move v3, v2

    goto :goto_1
.end method
