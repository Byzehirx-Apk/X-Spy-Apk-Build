.class public abstract Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "WrappedDrawableApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/WrappedDrawableApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DrawableWrapperState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 5
    .param p1    # Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v1, p1

    .local v1, "orig":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v2, p2

    .local v2, "res":Landroid/content/res/Resources;
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 360
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 361
    move-object v3, v0

    sget-object v4, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 364
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 365
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    iput v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    .line 366
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 367
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 368
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method canConstantState()Z
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    return v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v1, v0

    iget v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 385
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v2

    :goto_0
    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    return v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    return-object v0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
