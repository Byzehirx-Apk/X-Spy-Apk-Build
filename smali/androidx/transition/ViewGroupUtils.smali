.class Landroidx/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Landroidx/transition/ViewGroupUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;
    .locals 5
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 34
    new-instance v1, Landroidx/transition/ViewGroupOverlayApi18;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    move-object v0, v1

    .line 36
    .end local v0    # "group":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .restart local v0    # "group":Landroid/view/ViewGroup;
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroidx/transition/ViewGroupOverlayApi14;->createFrom(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayApi14;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "group":Landroid/view/ViewGroup;
    move v1, p1

    .local v1, "suppress":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 44
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtilsApi18;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroidx/transition/ViewGroupUtilsApi14;->suppressLayout(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method
