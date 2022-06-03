.class public Landroidx/core/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/TypedArrayUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 326
    return-void
.end method

.method public static getAttr(Landroid/content/Context;II)I
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "attr":I
    move v2, p2

    .local v2, "fallbackAttr":I
    new-instance v4, Landroid/util/TypedValue;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object v3, v4

    .line 318
    .local v3, "value":Landroid/util/TypedValue;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move v5, v1

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 319
    move-object v4, v3

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 320
    move v4, v1

    move v0, v4

    .line 322
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move v4, v2

    move v0, v4

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/res/TypedArray;IIZ)Z
    .locals 8
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move v3, p3

    .local v3, "defaultValue":Z
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v4, v5

    .line 228
    .local v4, "val":Z
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v0, v5

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return v0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 239
    .local v3, "val":Landroid/graphics/drawable/Drawable;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 240
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 242
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return-object v0
.end method

.method public static getInt(Landroid/content/res/TypedArray;III)I
    .locals 8
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move v3, p3

    .local v3, "defaultValue":I
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v4, v5

    .line 252
    .local v4, "val":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v0, v5

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return v0
.end method

.method public static getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
    .locals 9
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move v4, p4

    .local v4, "defaultValue":Z
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 87
    .local v5, "hasAttr":Z
    move v6, v5

    if-nez v6, :cond_0

    .line 88
    move v6, v4

    move v0, v6

    .line 90
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 9
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move v4, p4

    .local v4, "defaultValue":I
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 122
    .local v5, "hasAttr":Z
    move v6, v5

    if-nez v6, :cond_0

    .line 123
    move v6, v4

    move v0, v6

    .line 125
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedComplexColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/res/ComplexColorCompat;
    .locals 13
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "theme":Landroid/content/res/Resources$Theme;
    move-object/from16 v3, p3

    .local v3, "attrName":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "resId":I
    move/from16 v5, p5

    .local v5, "defaultValue":I
    move-object v8, v1

    move-object v9, v3

    invoke-static {v8, v9}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 141
    new-instance v8, Landroid/util/TypedValue;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    move-object v6, v8

    .line 142
    .local v6, "value":Landroid/util/TypedValue;
    move-object v8, v0

    move v9, v4

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    .line 143
    move-object v8, v6

    iget v8, v8, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_0

    move-object v8, v6

    iget v8, v8, Landroid/util/TypedValue;->type:I

    const/16 v9, 0x1f

    if-gt v8, v9, :cond_0

    .line 145
    move-object v8, v6

    iget v8, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroidx/core/content/res/ComplexColorCompat;->from(I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v8

    move-object v0, v8

    .line 153
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "value":Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .line 149
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "value":Landroid/util/TypedValue;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    move v10, v4

    const/4 v11, 0x0

    .line 150
    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    move-object v10, v2

    .line 149
    invoke-static {v8, v9, v10}, Landroidx/core/content/res/ComplexColorCompat;->inflate(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v8

    move-object v7, v8

    .line 151
    .local v7, "complexColor":Landroidx/core/content/res/ComplexColorCompat;
    move-object v8, v7

    if-eqz v8, :cond_1

    move-object v8, v7

    move-object v0, v8

    goto :goto_0

    .line 153
    .end local v6    # "value":Landroid/util/TypedValue;
    .end local v7    # "complexColor":Landroidx/core/content/res/ComplexColorCompat;
    :cond_1
    move v8, v5

    invoke-static {v8}, Landroidx/core/content/res/ComplexColorCompat;->from(I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v8

    move-object v0, v8

    goto :goto_0
.end method

.method public static getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
    .locals 9
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move v4, p4

    .local v4, "defaultValue":F
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 70
    .local v5, "hasAttr":Z
    move v6, v5

    if-nez v6, :cond_0

    .line 71
    move v6, v4

    move v0, v6

    .line 73
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 9
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move v4, p4

    .local v4, "defaultValue":I
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 104
    .local v5, "hasAttr":Z
    move v6, v5

    if-nez v6, :cond_0

    .line 105
    move v6, v4

    move v0, v6

    .line 107
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
    .locals 9
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AnyRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyRes;
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move v4, p4

    .local v4, "defaultValue":I
    move-object v6, v1

    move-object v7, v2

    invoke-static {v6, v7}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 167
    .local v5, "hasAttr":Z
    move v6, v5

    if-nez v6, :cond_0

    .line 168
    move v6, v4

    move v0, v6

    .line 170
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v6, v0

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public static getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    .line 185
    .local v4, "hasAttr":Z
    move v5, v4

    if-nez v5, :cond_0

    .line 186
    const/4 v5, 0x0

    move-object v0, v5

    .line 188
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static getResourceId(Landroid/content/res/TypedArray;III)I
    .locals 8
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AnyRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyRes;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move v3, p3

    .local v3, "defaultValue":I
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v4, v5

    .line 263
    .local v4, "val":I
    move-object v5, v0

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v0, v5

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return v0
.end method

.method public static getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 274
    .local v3, "val":Ljava/lang/String;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 275
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 277
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return-object v0
.end method

.method public static getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;
    .locals 6
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 290
    .local v3, "val":Ljava/lang/CharSequence;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 291
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 293
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return-object v0
.end method

.method public static getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .locals 6
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "fallbackIndex":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 306
    .local v3, "val":[Ljava/lang/CharSequence;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 307
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    move-object v3, v4

    .line 309
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "a":Landroid/content/res/TypedArray;
    return-object v0
.end method

.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 5
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v1, p1

    .local v1, "attrName":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    return v0

    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "res":Landroid/content/res/Resources;
    move-object v1, p1

    .local v1, "theme":Landroid/content/res/Resources$Theme;
    move-object v2, p2

    .local v2, "set":Landroid/util/AttributeSet;
    move-object v3, p3

    .local v3, "attrs":[I
    move-object v4, v1

    if-nez v4, :cond_0

    .line 216
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v4

    .line 218
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;
    .locals 7
    .param p0    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p1

    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object v2, p2

    .local v2, "attrName":Ljava/lang/String;
    move v3, p3

    .local v3, "resId":I
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    .line 201
    .local v4, "hasAttr":Z
    move v5, v4

    if-nez v5, :cond_0

    .line 202
    const/4 v5, 0x0

    move-object v0, v5

    .line 204
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method
