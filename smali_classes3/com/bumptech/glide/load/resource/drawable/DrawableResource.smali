.class public abstract Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.super Ljava/lang/Object;
.source "DrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final drawable:Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v2, v1

    if-nez v2, :cond_0

    .line 21
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Drawable must not be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    .line 24
    return-void
.end method


# virtual methods
.method public final get()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->get()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/load/resource/drawable/DrawableResource;, "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<TT;>;"
    return-object v0
.end method
