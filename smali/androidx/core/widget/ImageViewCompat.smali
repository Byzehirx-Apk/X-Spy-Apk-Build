.class public Landroidx/core/widget/ImageViewCompat;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Landroidx/core/widget/ImageViewCompat;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 38
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 41
    .end local v0    # "view":Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 40
    .restart local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/core/widget/TintableImageSourceView;

    .line 41
    invoke-interface {v1}, Landroidx/core/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .locals 3
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 77
    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 80
    .end local v0    # "view":Landroid/widget/ImageView;
    :goto_0
    return-object v0

    .line 79
    .restart local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/core/widget/TintableImageSourceView;

    .line 80
    invoke-interface {v1}, Landroidx/core/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .locals 6
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    move-object v1, p1

    .local v1, "tintList":Landroid/content/res/ColorStateList;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 51
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 56
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 57
    .local v2, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 58
    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 59
    .local v3, "hasTint":Z
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 60
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 63
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 69
    .end local v2    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "hasTint":Z
    :cond_1
    :goto_1
    return-void

    .line 58
    .restart local v2    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 66
    .end local v2    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v4, :cond_1

    .line 67
    move-object v4, v0

    check-cast v4, Landroidx/core/widget/TintableImageSourceView;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public static setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 6
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "view":Landroid/widget/ImageView;
    move-object v1, p1

    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 91
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 93
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_1

    .line 96
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v2, v4

    .line 97
    .local v2, "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    .line 98
    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 99
    .local v3, "hasTint":Z
    move-object v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    if-eqz v4, :cond_1

    .line 100
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 103
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 109
    .end local v2    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "hasTint":Z
    :cond_1
    :goto_1
    return-void

    .line 98
    .restart local v2    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 106
    .end local v2    # "imageViewDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object v4, v0

    instance-of v4, v4, Landroidx/core/widget/TintableImageSourceView;

    if-eqz v4, :cond_1

    .line 107
    move-object v4, v0

    check-cast v4, Landroidx/core/widget/TintableImageSourceView;

    move-object v5, v1

    invoke-interface {v4, v5}, Landroidx/core/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
