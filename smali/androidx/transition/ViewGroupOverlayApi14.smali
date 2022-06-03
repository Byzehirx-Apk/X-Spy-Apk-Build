.class Landroidx/transition/ViewGroupOverlayApi14;
.super Landroidx/transition/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroidx/transition/ViewGroupOverlayImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 8

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi14;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "hostView":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "requestingView":Landroid/view/View;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroidx/transition/ViewOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 29
    return-void
.end method

.method static createFrom(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayApi14;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "viewGroup":Landroid/view/ViewGroup;
    move-object v1, v0

    invoke-static {v1}, Landroidx/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroidx/transition/ViewOverlayApi14;

    move-result-object v1

    check-cast v1, Landroidx/transition/ViewGroupOverlayApi14;

    move-object v0, v1

    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    return-object v0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi14;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupOverlayApi14;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/transition/ViewGroupOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/view/View;)V

    .line 43
    return-void
.end method
