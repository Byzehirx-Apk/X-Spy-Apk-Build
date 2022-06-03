.class Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;
.super Landroid/graphics/drawable/RippleDrawable;
.source "MaterialButtonBackgroundDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/InsetDrawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;
    move-object v1, p1

    .local v1, "color":Landroid/content/res/ColorStateList;
    move-object v2, p2

    .local v2, "content":Landroid/graphics/drawable/InsetDrawable;
    move-object v3, p3

    .local v3, "mask":Landroid/graphics/drawable/Drawable;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method


# virtual methods
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;
    move-object v1, p1

    .local v1, "colorFilter":Landroid/graphics/ColorFilter;
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 66
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/InsetDrawable;

    move-object v2, v5

    .line 67
    .local v2, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v5

    .line 68
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v5

    .line 69
    .local v4, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 71
    .end local v2    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v3    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method
