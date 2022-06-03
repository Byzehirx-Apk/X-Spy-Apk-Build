.class public Lcom/google/android/material/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


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
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/drawable/DrawableUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 9
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, p2

    .local v2, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    .line 39
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 43
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v3, v4

    .line 43
    .local v3, "color":I
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v4

    goto :goto_0
.end method
