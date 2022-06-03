.class public Landroidx/appcompat/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, p1

    .local v1, "view":Landroid/widget/ImageView;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .locals 9
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, p1

    .local v1, "imageSource":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    if-nez v5, :cond_0

    .line 197
    move-object v5, v0

    new-instance v6, Landroidx/appcompat/widget/TintInfo;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v6, v5, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    .line 199
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    move-object v2, v5

    .line 200
    .local v2, "info":Landroidx/appcompat/widget/TintInfo;
    move-object v5, v2

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintInfo;->clear()V

    .line 202
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v5}, Landroidx/core/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v3, v5

    .line 203
    .local v3, "tintList":Landroid/content/res/ColorStateList;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 204
    move-object v5, v2

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 205
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 207
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v5}, Landroidx/core/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    move-object v4, v5

    .line 208
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 209
    move-object v5, v2

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 210
    move-object v5, v2

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 213
    :cond_2
    move-object v5, v2

    iget-boolean v5, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v5, :cond_3

    move-object v5, v2

    iget-boolean v5, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v5, :cond_4

    .line 214
    :cond_3
    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 215
    const/4 v5, 0x1

    move v0, v5

    .line 218
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move v1, v2

    .line 175
    .local v1, "sdk":I
    move v2, v1

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    .line 178
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 186
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :goto_1
    return v0

    .line 178
    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 179
    :cond_1
    move v2, v1

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 183
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1

    .line 186
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method applySupportImageTint()V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 138
    .local v1, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v1

    invoke-static {v2}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 143
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    .line 144
    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    .line 158
    :goto_0
    return-void

    .line 150
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_3

    .line 151
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 152
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v4

    .line 151
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 158
    :cond_2
    :goto_1
    goto :goto_0

    .line 153
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v2, :cond_2

    .line 154
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 155
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v4

    .line 154
    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto :goto_1
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v1, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v1, v1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasOverlappingRendering()Z
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 100
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 104
    const/4 v2, 0x0

    move v0, v2

    .line 106
    .end local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, p1

    .local v1, "attrs":Landroid/util/AttributeSet;
    move v2, p2

    .local v2, "defStyleAttr":I
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    sget-object v9, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    move v10, v2

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v7

    move-object v3, v7

    .line 53
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 54
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 57
    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    move v5, v7

    .line 58
    .local v5, "id":I
    move v7, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 59
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    move v8, v5

    invoke-static {v7, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v4, v7

    .line 60
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 61
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .end local v5    # "id":I
    :cond_0
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 67
    move-object v7, v4

    invoke-static {v7}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_1
    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 71
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v8, v3

    sget v9, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 72
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 71
    invoke-static {v7, v8}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 74
    :cond_2
    move-object v7, v3

    sget v8, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 75
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v8, v3

    sget v9, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    const/4 v10, -0x1

    .line 77
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    .line 76
    invoke-static {v8, v9}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    .line 75
    invoke-static {v7, v8}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 81
    .line 82
    return-void

    .line 80
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method public setImageResource(I)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move v1, p1

    .local v1, "resId":I
    move v3, v1

    if-eqz v3, :cond_1

    .line 86
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 87
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 88
    move-object v3, v2

    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 95
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 96
    return-void

    .line 92
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method setInternalImageTint(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 162
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    .line 163
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 165
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 166
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 170
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 171
    return-void

    .line 168
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    goto :goto_0
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    .line 111
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 113
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 114
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 115
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 116
    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/AppCompatImageHelper;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v2, :cond_0

    .line 124
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    .line 126
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 127
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 129
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    .line 130
    return-void
.end method
