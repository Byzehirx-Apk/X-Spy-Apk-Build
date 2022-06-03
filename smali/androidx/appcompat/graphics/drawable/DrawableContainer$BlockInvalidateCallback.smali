.class Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockInvalidateCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1189
    return-void
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
    .line 1193
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-wide v3, p3

    .local v3, "when":J
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v5, :cond_0

    .line 1194
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1196
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    move-object v1, p1

    .local v1, "who":Landroid/graphics/drawable/Drawable;
    move-object v2, p2

    .local v2, "what":Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v3, :cond_0

    .line 1201
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1203
    :cond_0
    return-void
.end method

.method public unwrap()Landroid/graphics/drawable/Drawable$Callback;
    .locals 4

    .prologue
    .line 1181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v1, v2

    .line 1182
    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1183
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    return-object v0
.end method

.method public wrap(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    .locals 4

    .prologue
    .line 1176
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    move-object v1, p1

    .local v1, "callback":Landroid/graphics/drawable/Drawable$Callback;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 1177
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;
    return-object v0
.end method
