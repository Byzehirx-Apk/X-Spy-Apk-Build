.class Landroidx/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/transition/GhostViewUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    move-object v1, p1

    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, p2

    .local v2, "matrix":Landroid/graphics/Matrix;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 28
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroidx/transition/GhostViewApi21;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;

    move-result-object v3

    move-object v0, v3

    .line 30
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Landroidx/transition/GhostViewApi14;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroidx/transition/GhostViewImpl;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "view":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 35
    move-object v1, v0

    invoke-static {v1}, Landroidx/transition/GhostViewApi21;->removeGhost(Landroid/view/View;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/transition/GhostViewApi14;->removeGhost(Landroid/view/View;)V

    goto :goto_0
.end method
