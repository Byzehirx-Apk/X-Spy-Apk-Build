.class Landroidx/core/graphics/drawable/WrappedDrawableApi21;
.super Landroidx/core/graphics/drawable/WrappedDrawableApi14;
.source "WrappedDrawableApi21.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WrappedDrawableApi21"

.field private static sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 45
    move-object v2, v0

    invoke-direct {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->findAndCacheIsProjectedDrawableMethod()V

    .line 46
    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, p1

    .local v1, "state":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v2, p2

    .local v2, "resources":Landroid/content/res/Resources;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 50
    move-object v3, v0

    invoke-direct {v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->findAndCacheIsProjectedDrawableMethod()V

    .line 51
    return-void
.end method

.method private findAndCacheIsProjectedDrawableMethod()V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    sget-object v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 162
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v3, "isProjected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 164
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "WrappedDrawableApi21"

    const-string/jumbo v3, "Failed to retrieve Drawable#isProjected() method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 4
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, p1

    .local v1, "outline":Landroid/graphics/Outline;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 66
    return-void
.end method

.method protected isCompatTintEnabled()Z
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v2

    .line 116
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 121
    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    :goto_1
    return v0

    .line 116
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public isProjected()Z
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 131
    :try_start_0
    sget-object v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 137
    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    :goto_0
    return v0

    .line 132
    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 133
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "WrappedDrawableApi21"

    const-string/jumbo v3, "Error calling Drawable#isProjected() method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 137
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method mutateConstantState()Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    new-instance v1, Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mState:Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    return-object v0
.end method

.method public setHotspot(FF)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 56
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 10

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "right":I
    move v4, p4

    .local v4, "bottom":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 61
    return-void
.end method

.method public setState([I)Z
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, p1

    .local v1, "stateSet":[I
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->invalidateSelf()V

    .line 107
    const/4 v2, 0x1

    move v0, v2

    .line 109
    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move v1, p1

    .local v1, "tintColor":I
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setTint(I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, p1

    .local v1, "tint":Landroid/content/res/ColorStateList;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21;
    move-object v1, p1

    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->isCompatTintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/core/graphics/drawable/WrappedDrawableApi14;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
