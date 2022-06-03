.class Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
.super Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
.source "WrappedDrawableApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/WrappedDrawableApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateLollipop"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 6
    .param p1    # Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
    move-object v1, p1

    .local v1, "orig":Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;
    move-object v2, p2

    .local v2, "res":Landroid/content/res/Resources;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 150
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
    move-object v1, p1

    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroidx/core/graphics/drawable/WrappedDrawableApi21;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Landroidx/core/graphics/drawable/WrappedDrawableApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    move-object v0, v2

    .end local v0    # "this":Landroidx/core/graphics/drawable/WrappedDrawableApi21$DrawableWrapperStateLollipop;
    return-object v0
.end method
