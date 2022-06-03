.class public Landroidx/appcompat/widget/TintTypedArray;
.super Ljava/lang/Object;
.source "TintTypedArray.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTypedValue:Landroid/util/TypedValue;

.field private final mWrapped:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "array":Landroid/content/res/TypedArray;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    .line 69
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 70
    return-void
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;
    .locals 10

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move v1, p1

    .local v1, "resid":I
    move-object v2, p2

    .local v2, "attrs":[I
    new-instance v3, Landroidx/appcompat/widget/TintTypedArray;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move-object v2, p2

    .local v2, "attrs":[I
    new-instance v3, Landroidx/appcompat/widget/TintTypedArray;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v0, v3

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method

.method public static obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;
    .locals 14

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, p1

    .local v1, "set":Landroid/util/AttributeSet;
    move-object/from16 v2, p2

    .local v2, "attrs":[I
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move/from16 v4, p4

    .local v4, "defStyleRes":I
    new-instance v5, Landroidx/appcompat/widget/TintTypedArray;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    .line 60
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v0, v5

    .end local v0    # "context":Landroid/content/Context;
    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getColor(II)I
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v2, v4

    .line 169
    .local v2, "resourceId":I
    move v4, v2

    if-eqz v4, :cond_0

    .line 170
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    move v5, v2

    .line 171
    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v3, v4

    .line 172
    .local v3, "value":Landroid/content/res/ColorStateList;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 173
    move-object v4, v3

    move-object v0, v4

    .line 177
    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    .end local v2    # "resourceId":I
    .end local v3    # "value":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getDimension(IF)F
    .locals 6

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 6

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 6

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v2, v3

    .line 75
    .local v2, "resourceId":I
    move v3, v2

    if-eqz v3, :cond_0

    .line 76
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    move v4, v2

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 79
    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    .end local v2    # "resourceId":I
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v2, v3

    .line 85
    .local v2, "resourceId":I
    move v3, v2

    if-eqz v3, :cond_0

    .line 86
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 89
    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    .end local v2    # "resourceId":I
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "style":I
    move-object v3, p3

    .local v3, "fontCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v4, v5

    .line 113
    .local v4, "resourceId":I
    move v5, v4

    if-nez v5, :cond_0

    .line 114
    const/4 v5, 0x0

    move-object v0, v5

    .line 119
    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :goto_0
    return-object v0

    .line 116
    .restart local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v5, :cond_1

    .line 117
    move-object v5, v0

    new-instance v6, Landroid/util/TypedValue;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    .line 119
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TintTypedArray;->mContext:Landroid/content/Context;

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    move v8, v2

    move-object v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public getFraction(IIIF)F
    .locals 10

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "base":I
    move v3, p3

    .local v3, "pbase":I
    move v4, p4

    .local v4, "defValue":F
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v5

    move v0, v5

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getIndex(I)I
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "at":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getInt(II)I
    .locals 6

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getInteger(II)I
    .locals 6

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public getResourceId(II)I
    .locals 6

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move v2, p2

    .local v2, "defValue":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public getType(I)I
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 222
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v2

    move v0, v2

    .line 228
    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :goto_0
    return v0

    .line 224
    .restart local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    if-nez v2, :cond_1

    .line 225
    move-object v2, v0

    new-instance v3, Landroid/util/TypedValue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    .line 227
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    .line 228
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mTypedValue:Landroid/util/TypedValue;

    iget v2, v2, Landroid/util/TypedValue;->type:I

    move v0, v2

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "outValue":Landroid/util/TypedValue;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public hasValue(I)Z
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/TintTypedArray;
    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/TintTypedArray;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void
.end method
