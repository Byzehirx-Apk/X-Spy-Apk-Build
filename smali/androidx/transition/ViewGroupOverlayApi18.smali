.class Landroidx/transition/ViewGroupOverlayApi18;
.super Ljava/lang/Object;
.source "ViewGroupOverlayApi18.java"

# interfaces
.implements Landroidx/transition/ViewGroupOverlayImpl;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mViewGroupOverlay:Landroid/view/ViewGroupOverlay;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi18;
    move-object v1, p1

    .local v1, "group":Landroid/view/ViewGroup;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    iput-object v3, v2, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    .line 34
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
    .line 38
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi18;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method public add(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi18;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi18;
    move-object v1, v0

    iget-object v1, v1, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v1}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 44
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi18;
    move-object v1, p1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi18;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi18;->mViewGroupOverlay:Landroid/view/ViewGroupOverlay;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 59
    return-void
.end method
