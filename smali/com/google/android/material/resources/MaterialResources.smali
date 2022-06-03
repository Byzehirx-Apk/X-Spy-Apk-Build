.class public Lcom/google/android/material/resources/MaterialResources;
.super Ljava/lang/Object;
.source "MaterialResources.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/resources/MaterialResources;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    move v2, p2

    .local v2, "index":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v3, v5

    .line 45
    .local v3, "resourceId":I
    move v5, v3

    if-eqz v5, :cond_0

    .line 46
    move-object v5, v0

    move v6, v3

    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v4, v5

    .line 47
    .local v4, "value":Landroid/content/res/ColorStateList;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 48
    move-object v5, v4

    move-object v0, v5

    .line 52
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "resourceId":I
    .end local v4    # "value":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    move v2, p2

    .local v2, "index":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v3, v5

    .line 66
    .local v3, "resourceId":I
    move v5, v3

    if-eqz v5, :cond_0

    .line 67
    move-object v5, v0

    move v6, v3

    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 68
    .local v4, "value":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 69
    move-object v5, v4

    move-object v0, v5

    .line 73
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "resourceId":I
    .end local v4    # "value":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method static getIndexWithValue(Landroid/content/res/TypedArray;II)I
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "attributes":Landroid/content/res/TypedArray;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    move v3, v1

    move v0, v3

    .line 102
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    :goto_0
    return v0

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    :cond_0
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method public static getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "attributes":Landroid/content/res/TypedArray;
    move v2, p2

    .local v2, "index":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v3, v4

    .line 86
    .local v3, "resourceId":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 87
    new-instance v4, Lcom/google/android/material/resources/TextAppearance;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    .line 90
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "resourceId":I
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method
