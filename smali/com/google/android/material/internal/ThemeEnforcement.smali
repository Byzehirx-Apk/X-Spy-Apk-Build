.class public final Lcom/google/android/material/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/R$attr;->colorPrimary:I

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Lcom/google/android/material/R$attr;->colorSecondary:I

    aput v3, v1, v2

    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/internal/ThemeEnforcement;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    const-string/jumbo v3, "Theme.AppCompat"

    invoke-static {v1, v2, v3}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 197
    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move v3, p3

    .local v3, "defStyleRes":I
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    move v9, v2

    move v10, v3

    .line 122
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 124
    .local v4, "a":Landroid/content/res/TypedArray;
    move-object v6, v4

    sget v7, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 v8, 0x0

    .line 125
    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move v5, v6

    .line 126
    .local v5, "enforceMaterialTheme":Z
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    move v6, v5

    if-eqz v6, :cond_0

    .line 129
    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    .line 131
    :cond_0
    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    const-string/jumbo v3, "Theme.MaterialComponents"

    invoke-static {v1, v2, v3}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 201
    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 16
    .param p2    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 141
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move-object/from16 v2, p2

    .local v2, "attrs":[I
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    move-object/from16 v5, p5

    .local v5, "textAppearanceResIndices":[I
    move-object v9, v0

    move-object v10, v1

    sget-object v11, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    move v12, v3

    move v13, v4

    .line 142
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v6, v9

    .line 144
    .local v6, "themeEnforcementAttrs":Landroid/content/res/TypedArray;
    move-object v9, v6

    sget v10, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    const/4 v11, 0x0

    .line 145
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    move v7, v9

    .line 147
    .local v7, "enforceTextAppearance":Z
    move v9, v7

    if-nez v9, :cond_0

    .line 148
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    .line 174
    :goto_0
    return-void

    .line 154
    :cond_0
    move-object v9, v5

    if-eqz v9, :cond_1

    move-object v9, v5

    array-length v9, v9

    if-nez v9, :cond_3

    .line 156
    :cond_1
    move-object v9, v6

    sget v10, Lcom/google/android/material/R$styleable;->ThemeEnforcement_android_textAppearance:I

    const/4 v11, -0x1

    .line 157
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 167
    .local v8, "validTextAppearance":Z
    :goto_2
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    move v9, v8

    if-nez v9, :cond_4

    .line 170
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 157
    .end local v8    # "validTextAppearance":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 162
    :cond_3
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    .line 163
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/internal/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result v9

    move v8, v9

    .restart local v8    # "validTextAppearance":Z
    goto :goto_2

    .line 174
    :cond_4
    goto :goto_0
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "themeAttributes":[I
    move-object v2, p2

    .local v2, "themeName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The style on this component requires your app theme to be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (or a descendant)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_0
    return-void
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v1

    move v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .locals 16
    .param p2    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 183
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move-object/from16 v2, p2

    .local v2, "attrs":[I
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    move-object/from16 v5, p5

    .local v5, "textAppearanceResIndices":[I
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    move v15, v4

    .line 184
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    move-object v6, v11

    .line 185
    .local v6, "componentAttrs":Landroid/content/res/TypedArray;
    move-object v11, v5

    move-object v7, v11

    move-object v11, v7

    array-length v11, v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_0
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_1

    move-object v11, v7

    move v12, v9

    aget v11, v11, v12

    move v10, v11

    .line 186
    .local v10, "customTextAppearanceIndex":I
    move-object v11, v6

    move v12, v10

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 187
    move-object v11, v6

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    const/4 v11, 0x0

    move v0, v11

    .line 192
    .end local v0    # "context":Landroid/content/Context;
    .end local v10    # "customTextAppearanceIndex":I
    :goto_1
    return v0

    .line 185
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v10    # "customTextAppearanceIndex":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 191
    .end local v10    # "customTextAppearanceIndex":I
    :cond_1
    move-object v11, v6

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    const/4 v11, 0x1

    move v0, v11

    goto :goto_1
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    sget-object v2, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    move-result v1

    move v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .locals 6

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "themeAttributes":[I
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v2, v4

    .line 213
    .local v2, "a":Landroid/content/res/TypedArray;
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    move v3, v4

    .line 214
    .local v3, "success":Z
    move-object v4, v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    move v4, v3

    move v0, v4

    .end local v0    # "context":Landroid/content/Context;
    return v0
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 12
    .param p2    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move-object v2, p2

    .local v2, "attrs":[I
    move v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    move-object/from16 v5, p5

    .local v5, "textAppearanceResIndices":[I
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 78
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;
    .locals 12
    .param p2    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move-object v2, p2

    .local v2, "attrs":[I
    move v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    move-object/from16 v5, p5

    .local v5, "textAppearanceResIndices":[I
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 116
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method
