.class Landroidx/core/graphics/drawable/WrappedDrawableApi14;
.super Landroid/graphics/drawable/Drawable;
.source "WrappedDrawableApi14.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/WrappedDrawable;
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperStateBase;,
        Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    .line 65
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 5
    .param p1    # Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "state":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v2, p2

    .local v2, "res":Landroid/content/res/Resources;
    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    .line 54
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateLocalState(Landroid/content/res/Resources;)V

    .line 55
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 5
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_0

    .line 75
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    return-void
.end method

.method private updateTint([I)Z
    .locals 8

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "state":[I
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->isCompatTintEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    const/4 v5, 0x0

    move v0, v5

    .line 314
    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :goto_0
    return v0

    .line 298
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    iget-object v5, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    move-object v2, v5

    .line 299
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    iget-object v5, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    move-object v3, v5

    .line 301
    .local v3, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v3

    if-eqz v5, :cond_3

    .line 302
    move-object v5, v2

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    move v4, v5

    .line 303
    .local v4, "color":I
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    if-eqz v5, :cond_1

    move v5, v4

    move-object v6, v0

    iget v6, v6, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentColor:I

    if-ne v5, v6, :cond_1

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v5, v6, :cond_2

    .line 304
    :cond_1
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 305
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentColor:I

    .line 306
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    .line 307
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    .line 308
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 310
    .line 314
    .end local v4    # "color":I
    :cond_2
    :goto_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 311
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    .line 312
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->clearColorFilter()V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    .line 104
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->getChangingConfigurations()I

    move-result v2

    :goto_0
    or-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0

    .line 104
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->canConstantState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->getChangingConfigurations()I

    move-result v2

    iput v2, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mChangingConfigurations:I

    .line 212
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-object v0, v1

    .line 214
    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "padding":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public getState()[I
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return-object v0
.end method

.method public final getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->invalidateSelf()V

    .line 252
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method protected isCompatTintEnabled()Z
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public isStateful()Z
    .locals 3

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    :goto_0
    move-object v1, v2

    .line 133
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0

    .line 130
    .end local v1    # "tintList":Landroid/content/res/ColorStateList;
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 133
    .restart local v1    # "tintList":Landroid/content/res/ColorStateList;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public jumpToCurrentState()V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 82
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mMutated:Z

    if-nez v1, :cond_2

    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_2

    .line 221
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    .line 222
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 223
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 225
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    if-eqz v1, :cond_1

    .line 226
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 228
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mMutated:Z

    .line 230
    :cond_2
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return-object v0

    .line 226
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    new-instance v1, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperStateBase;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperStateBase;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "bounds":Landroid/graphics/Rect;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 92
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 11
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    move-object v1, p0

    .local v1, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v2, p1

    .local v2, "who":Landroid/graphics/drawable/Drawable;
    move-object v3, p2

    .local v3, "what":Ljava/lang/Runnable;
    move-wide v4, p3

    .local v4, "when":J
    move-object v6, v1

    move-object v7, v3

    move-wide v8, v4

    invoke-virtual {v6, v7, v8, v9}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 260
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "alpha":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 121
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "mirrored":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 199
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "configs":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 99
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "cf":Landroid/graphics/ColorFilter;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 126
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "dither":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 111
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "filter":Z
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 116
    return-void
.end method

.method public setState([I)Z
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    move v2, v3

    .line 139
    .local v2, "handled":Z
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 140
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0

    .line 139
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "tint":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 278
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 283
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->getState()[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    move-result v2

    .line 284
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 289
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->getState()[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    move-result v2

    .line 290
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move v1, p1

    .local v1, "visible":Z
    move v2, p2

    .local v2, "restart":Z
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    return v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 331
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 334
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 337
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 339
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setVisible(ZZ)Z

    move-result v2

    .line 340
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setState([I)Z

    move-result v2

    .line 341
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setLevel(I)Z

    move-result v2

    .line 342
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setBounds(Landroid/graphics/Rect;)V

    .line 343
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    if-eqz v2, :cond_1

    .line 344
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iput-object v3, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 348
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->invalidateSelf()V

    .line 349
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi14;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method
