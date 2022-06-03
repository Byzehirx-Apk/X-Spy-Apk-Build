.class Landroidx/transition/ViewOverlayApi18;
.super Ljava/lang/Object;
.source "ViewOverlayApi18.java"

# interfaces
.implements Landroidx/transition/ViewOverlayImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mViewOverlay:Landroid/view/ViewOverlay;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi18;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v3

    iput-object v3, v2, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    .line 33
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi18;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi18;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    .line 43
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewOverlayApi18;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method
